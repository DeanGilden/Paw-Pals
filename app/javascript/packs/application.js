// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initChatroomCable } from '../channels/chatroom_channel';
import { initSweetalert } from '../components/pop-up';
import { editForm } from '../components/edit_form';
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initAutocomplete();
  initChatroomCable();
  editForm();
  initSweetalert('#create-dog-btn', {
    title: "Becoming a Paw-Pal..",
    text: "Welcome to Paw-Pals",
    icon: "success"
  });
  const btn = document.querySelector('#create-booking-btn')
  if (btn) {
    const dog = btn.dataset.dog
    initSweetalert('#create-booking-btn', {
      title: "Booking confirmed.",
      text: `Don't be shy, contact ${dog}'s owner via chat.`,
      icon: "success"
    });
  }
  
  document.querySelectorAll('.sweet-alert-delete').forEach(element => {
    let id = element.dataset.id
    initSweetalert(`#delete-booking-${id}`, {
      title: "Cancel booking?",
      text: "Are you sure you want to cancel this booking?",
      icon: "warning"
    }, (value) => {
      if (value) {
        const link = document.querySelector(`#delete-link-${id}`);
        link.click();
      }
    });
  })

});
