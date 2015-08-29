
function playSomeSound(genre) {
	SC.get('/tracks', {
		genre: genre,
		bpm: {
			from: 100
		}
	}, function(tracks) {
		var random = Math.floor(Math.random() * 49);
		SC.oEmbed(tracks[random].uri, {auto_play: true, maxheight: 200}, document.getElementById('target'));
	})
}

window.onload = function(){
	SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})
	var menuLinks = document.getElementsByClassName('genre')
	var i = 0
	for(i; i < menuLinks.length; i++){
		var menuLink = menuLinks[i]
		menuLink.onclick = function(e) {
			e.preventDefault();
			playSomeSound(menuLink.innerHTML)
		}
	}
}
