// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery.raty
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require ratyrate
//= require toastr
//= require_tree .

var options = {
    closeButton: true,
    progressBar: true,
    tapToDismiss: true,
    showDuration: 300,
    hideDuration: 1000,
    extendedTimeOut: 1000,
    timeOut: 4000,
}
function fd_type_select() {
    var is_food = $('input[name="fooddrink[foodtype]"]:checked').val();
    var selectData = $('option', 'select#fd-select-data');
    var selectAddress = $('select#fooddrink_fd_type_id');
    selectAddress.empty();
    if (is_food == "true"){
        $.each(selectData, function (key, value) {
            if ( $(value).data('type') === 'food') {
                selectAddress.append($(value).clone());
            }
        });
    }else {
        $.each(selectData, function (key, value) {
            if ($(value).data('type') === 'drink') {
                selectAddress.append($(value).clone());
            }
        });
    }
}

window.onload = function reset() {
    toastr.options = options;
    var notice = $('#notice');
    if (notice.text() != "") {
        toastr.success(notice.text());
        notice.hide();
    }
    var errors = $('#error_explanation ul li');
    if (!jQuery.isEmptyObject(errors)) {
        errors.each(function (i, obj) {
            obj = $(obj);
            toastr.error(obj.text());
        });
    }

    fd_type_select();
    $('#new_fooddrink input[name="fooddrink[foodtype]"]').bind('change', function () {
        fd_type_select();
    });

}
