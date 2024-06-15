local oxmysql = exports.oxmysql

-- Auto-generate database schema
oxmysql:executeSync([[
    CREATE TABLE IF NOT EXISTS `lankyped_whitelisted_players` (
        `id` INT AUTO_INCREMENT PRIMARY KEY,
        `steam_hex` VARCHAR(255) UNIQUE NOT NULL
    )
]])

oxmysql:executeSync([[
    CREATE TABLE IF NOT EXISTS `lankyped_favorite_peds` (
        `id` INT AUTO_INCREMENT PRIMARY KEY,
        `steam_hex` VARCHAR(255) NOT NULL,
        `ped_model` VARCHAR(255) NOT NULL
    )
]])


-- Function to check if a player is a Ped Admin
local function isPedAdmin(player)
    local identifiers = GetPlayerIdentifiers(player)
    for _, identifier in ipairs(identifiers) do
        for _, adminHex in ipairs(Config.PedAdmins) do
            if identifier == adminHex then
                return true
            end
        end
    end
    return false
end

-- Function to check if a player is whitelisted
local function isWhitelisted(steamHex)
    local result = MySQL.scalar.await('SELECT COUNT(1) FROM lankyped_whitelisted_players WHERE steam_hex = ?', { steamHex })
    return result > 0
end

-- Function to refresh the whitelist for all admins
local function refreshWhitelistForAdmins()
    local admins = GetPlayers()
    local result = MySQL.query.await('SELECT steam_hex FROM lankyped_whitelisted_players')
    for _, admin in ipairs(admins) do
        if isPedAdmin(admin) then
            TriggerClientEvent('lankyped:loadWhitelist', admin, result)
        end
    end
end

-- Function to add a player to the whitelist
local function addPlayerToWhitelist(steamHex)
    MySQL.Async.execute('INSERT IGNORE INTO lankyped_whitelisted_players (steam_hex) VALUES (?)', { steamHex }, function(affectedRows)
        if affectedRows > 0 then
            -- Refresh whitelist for all admins
            refreshWhitelistForAdmins()
        end
    end)
end

-- Function to remove a player from the whitelist
local function removePlayerFromWhitelist(steamHex)
    MySQL.Async.execute('DELETE FROM lankyped_whitelisted_players WHERE steam_hex = ?', { steamHex }, function(affectedRows)
        if affectedRows > 0 then
            -- Refresh whitelist for all admins
            refreshWhitelistForAdmins()
        end
    end)
end

-- Async function to get a player's favorite peds
local function getFavoritePedsAsync(steamHex)
    local result = MySQL.query.await('SELECT ped_model FROM lankyped_favorite_peds WHERE steam_hex = ?', { steamHex })
    return result
end

-- Function to add a favorite ped
local function addFavoritePed(steamHex, pedModel)
    MySQL.Async.execute('INSERT IGNORE INTO lankyped_favorite_peds (steam_hex, ped_model) VALUES (?, ?)', { steamHex, pedModel }, function(affectedRows)
        if affectedRows > 0 then
            -- Favorite added
        end
    end)
end

-- Function to remove all favorite peds for a player
local function clearFavoritePeds(steamHex)
    MySQL.Async.execute('DELETE FROM lankyped_favorite_peds WHERE steam_hex = ?', { steamHex }, function(affectedRows)
        if affectedRows > 0 then
            -- Favorites cleared
        end
    end)
end

-- Function to notify a player
local function notifyPlayer(source, message, type)
    TriggerClientEvent('ox_lib:notify', source, { title = 'Ped Admin', description = message, type = type })
end

RegisterNetEvent('lankyped:requestWhitelist')
AddEventHandler('lankyped:requestWhitelist', function()
    local src = source
    if isPedAdmin(src) then
        local result = MySQL.query.await('SELECT steam_hex FROM lankyped_whitelisted_players')
        TriggerClientEvent('lankyped:loadWhitelist', src, result)
        TriggerClientEvent('lankyped:openWhitelistMenu', src)
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end)

RegisterNetEvent('lankyped:addSteamHex')
AddEventHandler('lankyped:addSteamHex', function(steamHex)
    local src = source
    if isPedAdmin(src) then
        addPlayerToWhitelist(steamHex)
        notifyPlayer(src, 'Steam Hex added to whitelist.', 'success')
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end)

RegisterNetEvent('lankyped:removeSteamHex')
AddEventHandler('lankyped:removeSteamHex', function(steamHex)
    local src = source
    if isPedAdmin(src) then
        removePlayerFromWhitelist(steamHex)
        notifyPlayer(src, 'Steam Hex removed from whitelist.', 'success')
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end)

RegisterNetEvent('lankyped:addPlayerToWhitelist')
AddEventHandler('lankyped:addPlayerToWhitelist', function(playerId)
    local src = source
    if isPedAdmin(src) then
        local identifiers = GetPlayerIdentifiers(playerId)
        for _, identifier in ipairs(identifiers) do
            if string.sub(identifier, 1, 6) == "steam:" then
                addPlayerToWhitelist(identifier)
                notifyPlayer(src, 'Player Steam Hex added to whitelist.', 'success')
                return
            end
        end
        notifyPlayer(src, 'Player Steam Hex not found.', 'error')
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end)

RegisterNetEvent('lankyped:removePlayerFromWhitelist')
AddEventHandler('lankyped:removePlayerFromWhitelist', function(playerId)
    local src = source
    if isPedAdmin(src) then
        local identifiers = GetPlayerIdentifiers(playerId)
        for _, identifier in ipairs(identifiers) do
            if string.sub(identifier, 1, 6) == "steam:" then
                removePlayerFromWhitelist(identifier)
                notifyPlayer(src, 'Player Steam Hex removed from whitelist.', 'success')
                return
            end
        end
        notifyPlayer(src, 'Player Steam Hex not found.', 'error')
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end)

RegisterNetEvent('lankyped:requestFavorites')
AddEventHandler('lankyped:requestFavorites', function()
    local src = source
    local identifiers = GetPlayerIdentifiers(src)
    local steamIdentifier = nil

    for _, identifier in ipairs(identifiers) do
        if string.sub(identifier, 1, 6) == "steam:" then
            steamIdentifier = identifier
            break
        end
    end

    if steamIdentifier then
        local result = getFavoritePedsAsync(steamIdentifier)
        TriggerClientEvent('lankyped:loadFavorites', src, result)
        -- Keep the favorites menu open
        TriggerClientEvent('lankyped:openFavoritesMenu', src)
    end
end)

RegisterNetEvent('lankyped:saveFavorites')
AddEventHandler('lankyped:saveFavorites', function(newFavorites)
    local src = source
    local identifiers = GetPlayerIdentifiers(src)
    local steamIdentifier = nil

    for _, identifier in ipairs(identifiers) do
        if string.sub(identifier, 1, 6) == "steam:" then
            steamIdentifier = identifier
            break
        end
    end

    if steamIdentifier then
        clearFavoritePeds(steamIdentifier)
        for _, pedModel in ipairs(newFavorites) do
            addFavoritePed(steamIdentifier, pedModel)
        end
    end
end)

-- Command to open the pedmenu, only if the player is whitelisted
RegisterCommand('pedmenu', function(source, args, rawCommand)
    local src = source
    local identifiers = GetPlayerIdentifiers(src)
    for _, identifier in ipairs(identifiers) do
        if isWhitelisted(identifier) then
            TriggerClientEvent('lankyped:openPedMenu', src)
            return
        end
    end
    notifyPlayer(src, 'You do not have permission to use this command.', 'error')
end, false)

-- Command to open the pedadmin menu, only if the player is a Ped Admin
RegisterCommand('pedadmin', function(source, args, rawCommand)
    local src = source
    if isPedAdmin(src) then
        TriggerEvent('lankyped:requestWhitelist', src)
    else
        notifyPlayer(src, 'You do not have permission to use this command.', 'error')
    end
end, false)
