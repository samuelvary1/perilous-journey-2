$(function(){

	var counter = 0;

	var chapterOne = "You open your eyes to find yourself in a strange apartment, having no idea how you'd gotten there. You gaze around in fear, but it quickly becomes apparent that you are alone here. You reach up and feel something wet and sticky behind your left ear, and your fingertips come away red in the hazy light of the room. It appears to be the middle of the night, but someone has lit a candle in the corner of the room, and there is evidence that someone has tended to you medically. You reach up again and sure enough find a rough row of stitches along what feels like a long gash towards the back of your head.'How on earth did I get here?' you whisper aloud. The last thing you remember was camping out in an old hospital building with Pavel, your spotter for the mission. A German patrol was supposed to come marching right down the streets of the newly conquered city, but they hadn't counted on a small band of resistance fighters staying behind to wage a hit-and-run campaign as long as they were still breathing. This city had been your home, after all, and with Pavel by your side, you felt confidence and adrenaline surge through your veins as you gripped the stock of your scoped rifle. Then the artillery had rained down on their heads. Apparently the Germans had known more about remaining pockets of resistance than anticipated. The mortars (and worse) came down from the sky with terrifying whistles and screeches across the previously tranquil autumn sky. The round that took out Pavel came barreling through the roof and crashing through the rotted floorboards behind you. You had just enough time to exchange a stupefied look of bewilderment with your comrade, before the round hit something solid and detonated upward through the building.";

	var sentences = chapterOne.split(". ");

	$('#current-sentence').text(sentences[counter] + ".");

	$('#next').click(function () {

		counter = (counter + 1) % sentences.length;
		
		$('#current-sentence').text(sentences[counter] + ".");
	});
});