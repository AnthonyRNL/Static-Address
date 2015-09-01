SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})

window.onload = function(){
	if (mediaNum === "1"){
		var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
		SC.oEmbed(urlWanted, {auto_play: true, maxheight: 200, iframe: true, color: 'FFFFFF'}, document.getElementById('target'));
	} else if (mediaNum === "2"){
		var urlWanted = url || 'https://youtu.be/bg1sT4ILG0w'
		$target = document.getElementById('target')
		embedurl = url.toString().replace('watch?v=', 'embed/')
		$('<iframe width="440" height="200" src="'+embedurl+'" frameborder="0" allowfullscreen></iframe>').appendTo(target)
		console.log($target)
	}
}

window.setTimeout(function(){
	$('target').scPlayer();
}, 2000)
