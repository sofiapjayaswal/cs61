import $ from 'jquery';
import './style.scss';

let seconds = 0;
function updateHtml() {
  seconds += 1;
  $('#main').html(`You have been on this page for ${seconds} seconds`);
}

setInterval(updateHtml, 1000); // call function every second
