// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require bootstrap-sprockets
//= require masonry/jquery.masonry
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require_tree .




// $('#exampleModal').on('shown.bs.modal', function () {
//   $('#myInput').trigger('focus')
// })
console.log("you are here");
window.onload = function(){
  document.getElementById("button-modal").onclick = function() { toggleModal()};
  document.getElementById("modal-close").onclick = function() { toggleCloseButton()};
  document.getElementById("add-comment").onclick = function(event) { saveComment()};

};
  function toggleModal() {
    const modal = document.getElementById("exampleModal");
    modal.classList.toggle("modal-show");
    modal.classList.remove("modal", "fade")
  };

  function toggleCloseButton() {
    const modal = document.getElementById("exampleModal");
    modal.classList.add("modal", "fade")
  };

  function saveComment(){
    event.preventDefault();
    comment = document.getElementById("comment_description")
    console.log(comment.innerHTML.text)

  }
