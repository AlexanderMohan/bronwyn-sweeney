import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

// add a class to the header element on scroll using stimulus js, with event listener

  connect() {

    window.addEventListener('scroll', function() {
      var header = document.querySelector('header');
      header.classList.toggle('bg-opacity-90', window.scrollY > 25);
      header.classList.toggle('drop-shadow-2xl', window.scrollY > 25);
    });

  }

}