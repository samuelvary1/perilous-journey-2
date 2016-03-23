$(function(){

	var counter = 0;

	var currentMainPlot = $("#location-plot").text();

	var sentences = currentMainPlot.split(". ");

	$("#plot-text").append('<div class="well"><p id="current-sentence">' + sentences[counter] + "." + '</p></div>')

	$('#current-sentence').text(sentences[counter] + ".");

	$('#next').click(function () {


			if (counter < sentences.length) {


				counter = (counter + 1) % sentences.length;
				
				$('#plot-text').append('<div class="well"><p id="current-sentence">' + sentences[counter] + "." + '</p></div>');

				var element = document.getElementById("current-sentence");
				element.scrollIntoView();
		}
	});
});


