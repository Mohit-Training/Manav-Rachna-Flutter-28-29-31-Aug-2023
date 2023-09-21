import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Modal/song.dart';

class MusciPlayer extends StatefulWidget {
  final int currentSong;
  final List<Song> songs;
  const MusciPlayer(
      {super.key, required this.songs, required this.currentSong});

  @override
  State<MusciPlayer> createState() => _MusciPlayerState();
}

class _MusciPlayerState extends State<MusciPlayer> {
  late int currentIndex;
  late Song song;
  AudioPlayer player = AudioPlayer();
  List<Song> songs = [];
  // late ShakeDetector detector; //shake detector of this screen
  Duration? totalDuration;
  Duration? position;
  Random random = Random();

  _seekTo(int microseconds) {
    player.seek(Duration(
        microseconds:
            microseconds)); //this event let you seek at that point of song
    _getPositionOfSong();
  }

  _getPositionOfSong() async {
    player.onPositionChanged.listen((Duration p) {
      setState(() => position = p);
    });
  }

  _play() {
    song.isPlaying = !song.isPlaying;
    player.play(UrlSource(song.audio));
    setState(() {});
  }

  _pause() {
    song.isPlaying = !song.isPlaying;
    player.pause();
    setState(() {});
  }

  _getDurationOfSong() async {
    player.onDurationChanged.listen((Duration d) {
      setState(() => totalDuration = d);
    });
  }

  playNextOrPrevSong(int index) {
    _pause();
    currentIndex += index;
    song = widget.songs[currentIndex];
    _play();
    _getDurationOfSong();
    _getPositionOfSong();
  }

  @override
  void initState() {
    super.initState();
    song = widget.songs[widget.currentSong];
    currentIndex = widget.currentSong;
    song.isPlaying = true;
    player.play(UrlSource(song.audio));
    _getDurationOfSong();
    _getPositionOfSong();
  }

  @override
  void dispose() {
    super.dispose();
    player.stop(); //if any song is playing stop it
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Song Player"),
        ),
        body: Column(
          children: [
            Container(
              child: Container(
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 132,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(song.image),
                      radius: 130,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: SweepGradient(stops: [
                0.12,
                0.3,
                0.64,
                1.0
              ], colors: [
                Color.fromARGB(255, 220, 45, 122),
                Color.fromARGB(255, 254, 197, 102),
                Color.fromARGB(255, 78, 97, 208),
                Color.fromARGB(255, 220, 45, 122),
              ])),
              height: deviceSize.height / 2.5,
              width: deviceSize.width,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(song.trackName,
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: deviceSize.width / 18)),
            ),
            Text(song.artistName,
                style: TextStyle(
                    color: Colors.blueAccent, fontSize: deviceSize.width / 24)),
            Container(
              width: deviceSize.width - 30,
              child: Column(
                children: [
                  Slider(
                      activeColor: Colors.deepPurpleAccent,
                      inactiveColor: Colors.pinkAccent,
                      thumbColor: Colors.pink,
                      min: 0.0,
                      value: position == null
                          ? 0.0
                          : position!.inMicroseconds.toDouble(),
                      max: totalDuration == null
                          ? 0.0
                          : totalDuration!.inMicroseconds.toDouble(),
                      onChanged: (value) {
                        _seekTo(value.toInt());
                        setState(() {});
                      }),
                  Container(
                    width: deviceSize.width - 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${position == null ? 0.0 : "${position?.inMinutes}:${position!.inSeconds < 10 ? '0' + '${position!.inSeconds}' : position!.inSeconds}"}",
                            style: TextStyle()),
                        Text(
                            "${totalDuration == null ? 0.0 : "${totalDuration?.inMinutes}:${totalDuration!.inSeconds}"}",
                            style: TextStyle())
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      playNextOrPrevSong(-1);
                    },
                    icon: Icon(
                      Icons.skip_previous,
                      size: 45,
                      color: Colors.purpleAccent,
                    )),
                IconButton(
                    onPressed: () {
                      //play or pause song
                      song.isPlaying ? _pause() : _play();
                    },
                    icon: Icon(
                      song.isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 45,
                      color: Colors.blueAccent,
                    )),
                IconButton(
                    onPressed: () {
                      playNextOrPrevSong(1);
                    },
                    icon: Icon(
                      Icons.skip_next,
                      size: 45,
                      color: Colors.purpleAccent,
                    ))
              ],
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
