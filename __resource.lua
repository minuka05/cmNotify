resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'cmNotify'
author 'Minuka'
description 'cmNotify - Notification script made for QB Core'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js',
	'html/css/style.css',
	'config.js',
}

client_scripts {
	'client/main.lua'
}

exports {
	'DoShortHudText',
	'DoHudText',
	'DoLongHudText',
	'DoCustomHudText',
	'PersistentHudText',
}
