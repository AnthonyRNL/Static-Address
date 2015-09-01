SC.initialize({
        client_id: '8a1760755d85f0e6579508e64c401791'
    })

window.onload = function(){
    var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
    SC.oEmbed(urlWanted, {auto_play: true, maxheight: 200, iframe: true, color: 'FFFFFF'}, document.getElementById('target'));

    $('target').scPlayer()
 }
