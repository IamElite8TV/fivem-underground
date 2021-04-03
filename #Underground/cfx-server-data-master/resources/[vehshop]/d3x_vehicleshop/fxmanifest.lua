fx_version 'bodacious'

author 'Duart3x'
description 'ESX Vehicle Shop'
game 'gta5'

version '1.2.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua'
}

ui_page "HTML/ui.html"

files {
    "HTML/ui.css",
    "HTML/ui.html",
	"HTML/ui.js",
	--"HTML/ui_br.html",
	--"HTML/ui_br.js",


	"HTML/imgs/8f.jpg",
	"HTML/imgs/adder.jpg",
	"HTML/imgs/akuma.jpg",
	"HTML/imgs/akuma.jpg",
	"HTML/imgs/Alpha_Front.jpg",
	"HTML/imgs/asea.jpg",
	"HTML/imgs/bagger.jpg",
	"HTML/imgs/ballerog.jpg",
	"HTML/imgs/bison.jpg",
	"HTML/imgs/blade.jpg",
	"HTML/imgs/blista.jpg",
	"HTML/imgs/buccaneer.jpg",
	"HTML/imgs/bufallos.jpg",
	"HTML/imgs/casco.jpg",
	"HTML/imgs/chino.jpg",
	"HTML/imgs/comet5.jpg",
	"HTML/imgs/coquette.jpg",
	"HTML/imgs/coquetteblackfin.jpg",
	"HTML/imgs/coquetteclassic.jpg",
	"HTML/imgs/daemon.jpg",
	"HTML/imgs/daemonhigh.jpg",
	"HTML/imgs/dominator.jpg",
	"HTML/imgs/dubsta6x6.jpg",
	"HTML/imgs/dukes.jpg",
	"HTML/imgs/enus.jpg",
	"HTML/imgs/autarch.png",
	"HTML/imgs/avarus.png",
	"HTML/imgs/baller.png",
	"HTML/imgs/banshee.png",
	"HTML/imgs/banshee900r.png",
	"HTML/imgs/bati801.png",
	"HTML/imgs/bati801rr.png",
	"HTML/imgs/bestiagts.png",
	"HTML/imgs/bf400.png",
	"HTML/imgs/bifta.png",
	"HTML/imgs/blazer.png",
	"HTML/imgs/bobcatxl.png",
	"HTML/imgs/brawler.png",
	"HTML/imgs/brioso.png",
	"HTML/imgs/btype.png",
	"HTML/imgs/buccaneerrider.png",
	"HTML/imgs/buffalo.png",
	"HTML/imgs/bullet.png",
	"HTML/imgs/burrito.png",
	"HTML/imgs/camper.png",
	"HTML/imgs/carbonizzare.png",
	"HTML/imgs/carbonrs.png",
	"HTML/imgs/cavalcade.png",
	"HTML/imgs/cheetah.png",
	"HTML/imgs/chimera.png",
	"HTML/imgs/chinoluxe.png",
	"HTML/imgs/cliffhanger.png",
	"HTML/imgs/comet.png",
	"HTML/imgs/contender.png",
	"HTML/imgs/cyclone.png",
	"HTML/imgs/defiler.png",
	"HTML/imgs/doublet.png",
	"HTML/imgs/dubstalux.png",
	"HTML/imgs/dubsta.png",
	"HTML/imgs/f620.png",
	"HTML/imgs/revolter.png",
	"HTML/imgs/schafteer.png",
	"HTML/imgs/schafterv12.png",
	"HTML/imgs/sultanrs.png",
	"HTML/imgs/feltzer.jpg",
	"HTML/imgs/elegy.png",
	"HTML/imgs/f620.png",
	"HTML/imgs/infernus.png",
	"HTML/imgs/jesterrace.png",
	"HTML/imgs/kamacho.png",
	"HTML/imgs/manchez.png",
	"HTML/imgs/massacro.png",
	"HTML/imgs/mesa.png",
	"HTML/imgs/moonbeam.png",
	"HTML/imgs/neon.png",
	"HTML/imgs/raiden.png",
	"HTML/imgs/raidgt.png",
	"HTML/imgs/rumpo.png",
	"HTML/imgs/sentinel3.png",
	"HTML/imgs/toros.png",
	"HTML/imgs/tyrus.png",
	"HTML/imgs/vacca.png",
	"HTML/imgs/xls.png",
	"HTML/imgs/ztype.png",
	"HTML/imgs/sanchez.png",
	"HTML/imgs/t20.png",
	"HTML/imgs/rrwraith.png",
	"HTML/imgs/porschepanamera.png",
	"HTML/imgs/bentleysuper.jpg",
	"HTML/imgs/bbentegya.jpg",
	"HTML/imgs/bmwm8.jpg",
	"HTML/imgs/senna.png",
	"HTML/imgs/mansi8.png",
	"HTML/imgs/demon.png",
	"HTML/imgs/gwagen.png",
	"HTML/imgs/c63.png",
	"HTML/imgs/bbentegya.jpg",
	"HTML/imgs/mercedesc63.png",
	"HTML/imgs/amggtr.png",


}

dependency 'es_extended'

exports {
	'GeneratePlate',
	'OpenShopMenu'
}