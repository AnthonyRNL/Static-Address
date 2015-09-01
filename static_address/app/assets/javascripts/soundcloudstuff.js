$(document).ready(initialize);
$(document).on('page:load', initialize);


function initialize() {
	SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})



		var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
		SC.oEmbed(urlWanted, {
			auto_play: true,
			maxheight: 200,
			iframe: true
		}, document.getElementById('target'));

		$('target').scPlayer(function (url) {
			url.reload()
		})
	
}




