// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import $ from 'jquery';
window.jQuery = $;
window.$ = $;

import 'jquery-ujs';

import "@hotwired/turbo-rails";
import "controllers";
import 'flowbite';
import 'flowbite-datepicker';
import 'flowbite/dist/datepicker.turbo.js';
import 'flowbite/dist/flowbite.turbo.js';

//= require jquery_ujs
//= require_tree .
