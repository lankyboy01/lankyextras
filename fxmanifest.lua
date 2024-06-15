-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

author 'LankyBoy01'
description 'Whitelisted Ped Menu Script with ox_lib and oxmysql data storage'
version '1.0.0'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}

client_scripts {
    'config.lua',
    'client.lua'
}

dependencies {
    'ox_lib',
    'oxmysql'
}