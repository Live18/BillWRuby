$(document).on('turbolinks:load', function(){
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
        lensSize: 100, 
        lensFadeIn: 400, 
        lensFadeOut: 500
    });
});
