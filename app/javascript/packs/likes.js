

const like_button = document.getElementById("heart")

if(like_button != null){
  like_button.addEventListener("click", function() {
    heart.classList.toggle("heart_red");
  })
}