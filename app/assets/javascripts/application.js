// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .
//= require chosen-jquery

$(function() {
  return $('.chosen-select').chosen({
    allow_single_deselect: true,
    placeholder_text_single: 'Selecione a opção desejada',
    placeholder_text: 'Selecione as opções desejadas',
    no_results_text: 'Nenhum resultado encontrado',
    width: '250px'
  });
});

$(function() {
  return $('.chosen-select-simple').chosen({
    disable_search_threshold: 10,
    placeholder_text_single: 'Selecione a opção desejada',
    no_results_text: 'Nenhum resultado encontrado',
    width: '250px'
  });
});
