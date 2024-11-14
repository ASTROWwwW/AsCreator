
fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_script '@es_extended/imports.lua'
client_scripts {
    '@es_extended/locale.lua',
       "src/RMenu.lua",
        "src/menu/RageUI.lua",
        "src/menu/Menu.lua",
        "src/menu/MenuController.lua",
    
        "src/components/*.lua",
    
        "src/menu/elements/*.lua",
    
        "src/menu/items/*.lua",
    
        "src/menu/panels/*.lua",
    
        "src/menu/panels/*.lua",
        "src/menu/windows/*.lua",
    
        'client/*.lua',
       
       

 


    
    
}

server_scripts {
    '@es_extended/locale.lua',
    '@oxmysql/lib/MySQL.lua',
   

    'server/*.lua',
    

    
}
