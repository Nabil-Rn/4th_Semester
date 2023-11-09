// Function to select a random image URL
function getRandomImageUrl(imageUrls) {
  //making a random number between 0 and imageUrls.length - 1
  var randomIndex = Math.floor(Math.random() * imageUrls.length);
  return imageUrls[randomIndex];
}

// Select all img elements
var imgElements = document.querySelectorAll('img');

var imageUrls = [];

// Extract image URLs from the existing img elements
imgElements.forEach(function (img) {
  imageUrls.push(img.src);
});

// Change the src attribute of each img element to a random image
imgElements.forEach(function (img) {
  img.src = getRandomImageUrl(imageUrls);
});

// Select all <p> elements on the page
var pElements = document.querySelectorAll('p');

// Change the text content of each <p> element
pElements.forEach(function (p) {
    p.textContent = "Hello! I'm using JavaScript to change this and randomize the images";
});
