$(function(){

	var counter = 0;

	var currentMainPlot = $("div#text").text();

	var sentences = currentMainPlot.split(". ");

	$('#current-sentence').text(sentences[counter] + ".");

	$('#next').click(function () {

		counter = (counter + 1) % sentences.length;
		
		$('#current-sentence').text(sentences[counter] + ".");
	});
});