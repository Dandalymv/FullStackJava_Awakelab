AOS.init();

function myFunction() {
			  // Get the checkbox
			  var checkBox = document.getElementById("btncheck1");
			  // Get the output text
			  var text = document.getElementById("text");

			  // If the checkbox is checked, display the output text
			  if (checkBox.checked == true){
			    text.style.display = "block";
			  } else {
			    text.style.display = "none";
			  }
}

var elems = document.getElementsByClassName('confirmation');
	    var confirmIt = function (e) {
	        if (!confirm('¿Eliminar registro?')) e.preventDefault();
	    };
	    for (var i = 0, l = elems.length; i < l; i++) {
	        elems[i].addEventListener('click', confirmIt, false);
	    }

const photos = Array.from(document.querySelectorAll('#photo'));

const scalingImage = (currentPhoto => {
  currentPhoto.classList.add("scaleImage");
  
  setTimeout(() => {
    currentPhoto.classList.remove('scaleImage');
  }, 4500);
})

photos.map((photo) => {
  photo.addEventListener('click', Event => {
    scalingImage(Event.target);
  })
});