<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script><!-- jQuery Latest -->
	<script src="../build/mediaelement-and-player.min.js"></script><!-- Audio/Video Player jQuery -->
	<script src="../build/mep-feature-playlist.js"></script><!-- Playlist JavaSCript -->

	<link rel="stylesheet" href="../css/progression-player.css" /><!-- Default Player Styles -->
	<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /><!-- Player Icons -->	
<script type="text/javascript">
<script>
$('.progression-single').mediaelementplayer({
	audioWidth: 400, // width of audio player
	audioHeight:40, // height of audio player
	startVolume: 0.5, // initial volume when the player starts
	features: ['playpause','current','progress','duration','tracks','volume','fullscreen']
	});
</script>
</script>
</head>
<body>
<audio class="progression-single progression-skin progression-audio-player" controls="controls" preload="none">
		<source src="../media/indie-rock.mp3" type="audio/mp3"/>
	</audio>
</body>
</html>