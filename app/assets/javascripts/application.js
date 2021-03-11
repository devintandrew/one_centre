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
//= require jquery
//= require materialize
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
    $(".dropdown-trigger").dropdown();
    $('.sidenav').sidenav();
    $('select').formSelect();

    $("#content_type").change(function() {
        console.log("change happened for movie");
        if ($(".select-dropdown").val() == "Movie") {
            $(".hidden_option_movie").fadeIn('fast');
        }
    });



    $("#content_type").change(function() {
        console.log("change happened for recipe");
        if ($("#content_type").val() == "Recipe") {
            $(".hidden_option_recipe").fadeIn('fast');
        }
    });


})