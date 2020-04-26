/* trigger when page is ready */
$(document).ready(function () {

    $(".accessibility").hover(function () {
        $(".accessibility-menu").css('visibility', 'visible');
    }, function () {
        $(".accessibility-menu").css('visibility', 'hidden');
    }
    );

    $('#action_approve').validate({
        debug: false,
        submitHandler: function () {
            $.post("ajax/approve_preview_page", $("#action_approve").serialize(), function (data) {
                $(".preview-bar").remove();
                if (data.status == 1) {
                    swal("Page Approved Successfully", "page will redirect to approval list page", "success")
                            .then(function (result) {
                                if (result) {
                                    setTimeout(function () {
                                        window.location.href = data.redirct_url;
                                    }, 500);
                                }
                            });
                } else if (data.status == 2) {
                    swal("Page Approval Rejected!", "page will redirect to approval list page", "error")
                            .then(function (result) {
                                if (result) {
                                    setTimeout(function () {
                                        window.location.href = data.redirct_url;
                                    }, 500);
                                }
                            });
                } else {
                    swal("Oops! Something went wrong please try again", "page will redirect to approval list page", "error")
                            .then(function (result) {
                                if (result) {
                                    setTimeout(function () {
                                        window.location.href = data.redirct_url;
                                    }, 500);
                                }
                            });
                }
            });
        }
    });

    $('#email_subscriber').validate({
        debug: false,
        rules: {
            newsletter_email: {
                required: true,
                email: true,
            },
        },
        submitHandler: function () {
            $.post("ajax/newsletter_subscriber", $("#email_subscriber").serialize(), function (data) {
                if (data == 1) {
                    $("#email_subscriber .spam-message").css('color', '#0bfda6');
                    $("#email_subscriber .spam-message").show();
                    $("#email_subscriber .spam-message").html('Subscribe Successfully!').fadeOut(10000);
                    $("#newsletter_email").val('');
                } else if (data == 2) {
                    $("#email_subscriber .spam-message").css('color', '#f57272');
                    $("#email_subscriber .spam-message").show();
                    $("#email_subscriber .spam-message").html('Oopps! Please try again').fadeOut(10000);
                } else if (data == 3) {
                    $("#email_subscriber .spam-message").css('color', '#0bfda6');
                    $("#email_subscriber .spam-message").show();
                    $("#email_subscriber .spam-message").html('Email id already exist').fadeOut(10000);
                } else {
                    $("#email_subscriber .spam-message").css('color', '#f57272');
                    $("#email_subscriber .spam-message").show();
                    $("#email_subscriber .spam-message").html('Enter valid Email!').fadeOut(10000);
                }
            });
        }

    });


    $('#alumni_signup').validate({
        debug: false,
        rules: {
            alumni_name: {
                required: true,
            },
            alumni_email: {
                required: true,
                email: true,
            },
        },
        submitHandler: function () {
            $("#alumni_signup .spam-message").show();
            $.post("ajax/alumni_signup", $("#alumni_signup").serialize(), function (data) {
                if (data == 1) {
                    $("#alumni_name").val('');
                    $("#alumni_email").val('');
                    $("#alumni_signup .spam-message").css('color', '#0bfda6');
                    $("#alumni_signup .spam-message").show();
                    $("#alumni_signup .spam-message").html('Subscribe Successfully!').fadeOut(10000);
                    $("#newsletter_email").val('');
                } else if (data == 2) {
                    $("#alumni_signup .spam-message").css('color', '#f57272');
                    $("#alumni_signup .spam-message").show();
                    $("#alumni_signup .spam-message").html('Oopps! Please try again').fadeOut(10000);
                } else {
                    $("#alumni_signup .spam-message").css('color', '#f57272');
                    $("#alumni_signup .spam-message").show();
                    $("#alumni_signup .spam-message").html('Enter valid Email!').fadeOut(10000);
                }
            });
        }

    });


    //Tabs functionality //Firstly hide all content divs begins here
    $('#generic-tabs div').hide();
    //Then show the first content div
    $('#generic-tabs div:first').show();
    //Add active class to the first tab link
    $('#generic-tabs ul#tabs li:first').addClass('active');
    //Functionality when a tab is clicked
    $('#generic-tabs ul#tabs li a').click(function () {
        //Firstly remove the current active class
        $('#generic-tabs ul#tabs li').removeClass('active');
        //Apply active class to the parent(li) of the link tag
        $(this).parent().addClass('active');
        //Set currentTab to this link
        var currentTab = $(this).attr('href');
        //Hide away all tabs
        $('#generic-tabs div').hide();
        //show the current tab
        $(currentTab).show();
        //Stop default link action from happening
        return false;
    });
    //Tabs functionality //Firstly hide all content divs end here

});
/*
function set_font_size(fontType) {
    var fontSize = 100;
    if (fontType == "increase") {
        if (fontSize < 130) {
            fontSize = parseInt(fontSize) + 15;
        }
    } else if (fontType == "decrease") {
        if (fontSize > 70) {
            fontSize = parseInt(fontSize) - 15;
        }
    } else {
        fontSize = 100;
    }
    //_setCookie("fontSize", fontSize);
    $(".lg-mnu-sec2 nav > div > ul > li").css("font-size", fontSize + "%");
    $("body").css("font-size", fontSize + "%");
    //jQuery("#template_three_column").css("font-size",fontSize + "%");
}*/