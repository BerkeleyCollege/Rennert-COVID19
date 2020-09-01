jQuery(document).ready(function () {
    //$('.registration-form fieldset:first-child').fadeIn('slow');
    $('#first-fieldset').css('display', 'block');

    $('.registration-form input[type="text"], .registration-form input[type="password"], .registration-form textarea').on('focus', function () {
        $(this).removeClass('input-error');
    });

    // next step
    $('.registration-form .btn-next').on('click', function () {
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;
       
        

        parent_fieldset.find('input[type="text"], input[type="password"], textarea, .ddlist').each(function () {
            if ($(this).hasClass('shownElement')) {
                if ($(this).val() == "" || $(this).val() == "0") {
                    $(this).addClass('input-error');
                    next_step = false;
                }
            } else {
                $(this).removeClass('input-error');
            }
        });

        if (next_step) {
            parent_fieldset.fadeOut(400, function () {
                if ($(this).next().hasClass('closed')) {
                    $('#closedModal').modal('show');
                } else {
                    if ($(this).next().hasClass('hiddenElement')) {
                        if ($(this).next().next().hasClass('hiddenElement')) {
                            $(this).next().next().next().fadeIn();
                        } else {
                            $(this).next().next().fadeIn();
                        }
                    } else if ($(this).next().hasClass('studentNo')) {
                        $('#finalFieldset').fadeIn();
                    } else {
                        $(this).next().fadeIn();
                    }
                }
            });
        }
    });
});

/* prevent enter */
$(document).keypress(
    function (event) {
        if (event.which == '13') {
            event.preventDefault();
        }
    });

/* date */
var currentdate = new Date();
var datetime = "Last Sync: " + (currentdate.getMonth() + 1) + "/"
    + currentdate.getDate() + "/"
    + currentdate.getFullYear() + " @ "
    + currentdate.getHours() + ":"
    + currentdate.getMinutes() + ":"
    + currentdate.getSeconds();
document.getElementById("dateToday").innerHTML = currentdate;

/* button next */
$(document).ready(function () {
    $('btn-next').on('click', function () {
        let val = + this.value;
        console.log(val)
    })
})

        function alertWindow() {
            if (quest5Value == "0") {
                event.preventDefault();
            } else {
                if (quest1Value == "1" && quest2Value == "1" && quest3Value == "1" && quest4Value == "1" && quest5Value == "1") {
                    document.getElementById('choiceResult').value = "Cleared";
                    document.getElementById('choiceResult').innerHTML = "Cleared";
                    document.getElementById('resultsFinal').textContent = "Cleared";
                    document.getElementById('#finalPage').style.color = "red";
                    $('#myModal').modal('show');
                    console.log("This is Choice Result: " + choiceResult.value);
                    console.log(sucMessage.innerHTML);
                }
                else {
                    document.getElementById('choiceResult').value = "Not Cleared";
                    document.getElementById('choiceResult').innerHTML = "Not Cleared";
                    document.getElementById('resultsFinal').textContent = "Not Cleared";
                    $('#myModal2').modal('show');
                    console.log("This is Choice Result: " + choiceResult.value);
                }
            }
        };

        function loaderModal() {
            $('#loadingModal').modal('show');
        }
