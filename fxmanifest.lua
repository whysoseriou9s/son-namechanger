author "brons0n#0001"
description "Simple Easy Name Changer Using Ox Lib"
version "1.0"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_script {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

client_scripts {
    "side/client.lua"
}
server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "side/server.lua"
}

dependency "ox_lib"