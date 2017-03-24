$(document).on('turbolinks:load', function(){

  console.log("here")

  var counter = 0;

  var InfiniteRotator = function() {

      var image = ["/carousel/concert.jpg","/carousel/cooking-for-a-crowd.jpg", "/carousel/hiking.jpg","/carousel/reading.jpg"];
			var fadeTime = 2500;
			var numberOfItems = image.length;

      $('.rotating-item').attr('src', image[counter]);

      if(counter == numberOfItems -1){
        counter = 0;
      }else{
        counter++;
      }

      $(".rotating-item").fadeToggle({duration: 4000});
      $(".rotating-item").fadeToggle({duration: 4000, done: InfiniteRotator});
  }
  InfiniteRotator();
});
