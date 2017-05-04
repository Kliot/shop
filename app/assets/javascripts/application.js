// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui/effects/effect-blind
//= require turbolinks
//= require cocoon
//= require_tree .
$(document).on('turbolinks:load', function() {
    $('a.remove-image').click(function(event) {
        var $target = $(event.currentTarget);
        var $block = $target.closest('.nested-fields');
        $block.find('._destroy');
        $block.find('._destroy').val('1');
        $block.hide();
        return false;
    })
});
