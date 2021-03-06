$(document).on('turbolinks:load ajax:complete', function(){
	$('.rating').raty({path: '/assets', scoreName: 'comment[rating]'});
	$('.rated').raty({path: '/assets',
		readOnly: true,
		score: function(){
			return $(this).attr('data-score');
		}

	});
	/* elevate zoom plugin*/
    $('.img-zoom').elevateZoom({
        zoomType: "lens", 
        lensShape: "round", 
        responsive: true,
	    zoomWindowFadeIn: 500,
	    zoomWindowFadeOut: 750,
	    scrollZoom : true
    });
});
