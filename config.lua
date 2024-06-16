-- config.lua

Config = {}

Config.Locations = {
    {name = 'LST 1', job = 'lst', coords = vector3(396.9744, -1624.0623, 28.9792), radius = 25.0, menuName = 'Trooper Extras'},
    {name = 'LST 2', job = 'lst', coords = vector3(1851.2023, 3697.6697, 33.7358), radius = 20.0, menuName = 'Trooper Extras'}
}

Config.Keys = {key2 = 29} -- Default key: B (used in combination with left shift)

Config.Command = 'extras' -- Command used to open menu if controls are not functioning

Config.AdminCommand = 'adminextras' -- Admin command to open the extras menu from anywhere
Config.AdminGroup = 'admin' -- Group that is allowed to use the command

-- Alignment of the menu: 'left' or 'right'
Config.MenuAlignment = 'left' -- Default: 'right'
