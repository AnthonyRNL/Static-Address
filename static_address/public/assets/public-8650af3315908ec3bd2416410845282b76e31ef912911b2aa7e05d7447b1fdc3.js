SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})

$(document).ready(function(){
window.onload = function(){
	var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
	SC.oEmbed(urlWanted, {auto_play: true, maxheight: 200, iframe: true, color: 'FFFFFF'}, document.getElementById('target'));

	window.setTimeout(function(){
		$('target').scPlayer();
	}, 2000)

}
})

;
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

