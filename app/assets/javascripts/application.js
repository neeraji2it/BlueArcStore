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
//= require jquery.notify_bar
//= require jquery.zoom
//= require highcharts
//= require Chart
//= require organictabs.jquery
//= require social-share-button
//= require navbar
//= require waypoints.min
//= require script
//= require_tree .

function select_file(val) {
    $.ajax({
        url: '/products/categories?category_id=' + val
    });
}

$(function() {
    $('a[data-nested-form-disable-first]').each(function() {
        var nested_container = $(this).closest('.fields');
        // check if is first
        if (!nested_container.prev().is('.fields')) {
            $(this).remove();
        }
    });
});

function select_sub_category(cat_id, sub_cat_id) {
    $.ajax({
        url: '/products/sub_categories',
        data: {
            category_id: cat_id,
            sub_category_id: sub_cat_id
        }
    });
}

function graph_id(th) {
    $("ul#xkgd li a").each(function() {
        $(this).css('font-weight', 'normal');
    });
    $(th).css('font-weight', 'bold');
}

$(document).ready(function() {
    setTimeout(function() {
        $('#collexp > li > a.expanded + ul').slideToggle('medium');
        $('#collexp > li > a').click(function() {
            $('#collexp > li > a.expanded').not(this).toggleClass('expanded').toggleClass('collapsed').parent().find('> ul').slideToggle('medium');
            $(this).toggleClass('expanded').toggleClass('collapsed').parent().find('> ul').slideToggle('medium');
        });
    }, 250);
});


function client_logos(product_id, s) {
    if (jQuery(s).val() != '') {
        $.ajax({
            url: '/products/' + product_id + '/sort_review/?sort=' + jQuery(s).val(),
            success: function(data) {
                $('#tot_reviews').html(data);
                $('#tot_reviews').html(data);
            }
        });
    }
}

//ajax loader

jQuery(document).ajaxStart(function(settings) {
    jQuery('#ajax-loader').show();
});
jQuery(document).ajaxStop(function() {
    jQuery('#ajax-loader').hide();
});

function buyer_users_path() {
    $.ajax({
        url: '/users/buyer',
        success: function(data) {
            $('#popup_body').html(data);
            $('#overlay').show();
            $('#popup_box').show();
        }
    });
}

function preview(product_id) {
    $.ajax({
        url: '/products/' + product_id + '/preview_product',
        success: function(data) {
            $("#popup_body").html(data);
            $('#overlay').show();
            $('#popup_box1').show();
        }
    })
}

function hide_popup() {

    if (jQuery('#popup_box')) {
        jQuery('#popup_body').html("");
        jQuery('#popup_box').hide();
    }

    if (jQuery('#overlay')) {
        jQuery('#overlay').hide();
    }
}

$(function() {
    $('.leftSec a img').click(function(e) {
        e.preventDefault();
        $('.midSec img').attr('src', $(this).attr('src'));
    });
});


$(function() {
    $('.pagination a').click(function() {
        $.getScript(this.href);
        return false;
    });
});

function get_username(ht) {
    $.ajax({
        url: "/users/username",
        data: {
            username: $(ht).val()
        },
        type: "PUT",
        success: function(data) {
            if (data == "Error") {
                alert("Error. Please try again");
            } else {
            }
        }
    });
}

$(document).ready(function() {
    var mouse_in_side = false;

    $('#popup_body').hover(function() {
        mouse_in_side = true;
    }, function() {
        mouse_in_side = false;
    });

    $(document).click(function() {
        if (mouse_in_side == false) {
            $("#overlay").hide();
            $("#popup_box").hide();
            $("#popup_box1").hide();
        }
    });
});





$(document).on('submit', "form#2checkout", function() {
    input_token = $("#authentication_code").val();

    if(input_token != 'DM-2checkout982435'){
        alert('Please enter valid authentication token');
        return false;
    }
})