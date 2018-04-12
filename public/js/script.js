
$(document).ready(function () {
    var outputSpan = $('#spanOutput');
    var sliderDiv = $('#slider');

    sliderDiv.slider({
        range: true,
        min: 0,
        max: 500,
        values: [0, 500],
        slide: function (event, ui) {
            outputSpan.html(ui.values[0] + ' - ' + ui.values[1] + ' KM');
        },
        
    });

    outputSpan.html(sliderDiv.slider('values', 0) + ' - '
        + sliderDiv.slider('values', 1) + ' KM');
});
