define([],function(){
  return {
    init:function($mod){
    	
    	var $leftMenu = $('.J_leftMenu',$mod).on('click',function(){
    		$rightMenu.removeClass('opened')

    		$(this).parent().toggleClass('opened')
    	}).parent(),

    	$rightMenu = $('.J_rightMenu',$mod).on('click',function(){
    		$leftMenu.removeClass('opened')

    		lastTarget = $(this).parent().toggleClass('opened')
    	}).parent();


    	//$(window).on('scroll',function(){
    		//$btn.removeClass('opened')
    	//})
    }
  }
})
