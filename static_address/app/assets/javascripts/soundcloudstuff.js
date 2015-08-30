
function playSomeSound(genre) {
	SC.get('/tracks', {
		genre: genre,
		bpm: {
			from: 100
		}
	}, function(tracks) {
//		var random = Math.floor(Math.random() * 49);
//		SC.oEmbed(tracks['https://soundcloud.com/my-chemical-romance/famous-last-words'].uri, {auto_play: true, maxheight: 200, iframe: true, color: 'FFFFFF'}, document.getElementById('target'));
	})
}

$(function(){
	var soundUrl = $('.target')
})

window.onload = function(){
	SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})
	var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
	SC.oEmbed(urlWanted, {auto_play: true, maxheight: 200, iframe: true, color: 'FFFFFF'}, document.getElementById('target'));
	
	$('target').scPlayer();
	
	
	//	var menuLinks = document.getElementsByClassName('genre')
//	var i = 0
//	for(i; i < menuLinks.length; i++){
//		var menuLink = menuLinks[i]
//		menuLink.onclick = function(e) {
//			e.preventDefault();
//			playSomeSound(menuLink.innerHTML)
//		}
//	}
}
