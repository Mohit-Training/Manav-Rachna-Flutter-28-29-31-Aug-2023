import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Modal/song.dart';
import 'package:music_app/Screens/music_player.dart';
import 'package:music_app/Services/song_services.dart';
import 'package:music_app/Utils/UtilServices.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shake/shake.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textEditingController = TextEditingController();
  SongServices songServices = SongServices.getInstance();
  UtilServices utilServices = UtilServices.getInstance();
  late Future<List<Song>> songListFuture;
  List<Song> songList = [];
  final player = AudioPlayer();
  int currentSong = -1;

  playSong(int index) async {
    if (currentSong != -1) {
      songList[currentSong].isPlaying = false;
    }
    await player.play(UrlSource(songList[index].audio));
    currentSong = index;
    songList[index].isPlaying = true;
    setState(() {});
  }

  pauseSong(int index) async {
    await player.pause();
    songList[index].isPlaying = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    songListFuture = songServices.searchSongs('Honey Singh');
    player.onPlayerComplete.listen((event) {
      songList[currentSong].isPlaying = false;
      playSong(currentSong + 1);
    });

    ShakeDetector.autoStart(onPhoneShake: () {
      pauseSong(currentSong);
      playSong(currentSong + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Alert(
            type: AlertType.warning,
            closeFunction: () {},
            closeIcon: Container(),
            context: context,
            title: 'Exit',
            desc: 'Do you want to exit the application?',
            buttons: [
              DialogButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              DialogButton(
                  child: Text('Exit'),
                  onPressed: () {
                    exit(0);
                  })
            ]).show();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SizedBox(
            height: 50,
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      songListFuture = songServices
                          .searchSongs(_textEditingController.text.trim());
                      setState(() {});
                    },
                  ),
                  labelText: 'Search Song Name or Artist Name',
                  labelStyle: TextStyle(color: Colors.grey.shade500),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
        ),
        body: FutureBuilder(
          future: songListFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Some Error has occurred'),
              );
            } else {
              songList = snapshot.data!;
              return songList.isEmpty
                  ? const Center(
                      child: Text('No Results for the search'),
                    )
                  : ListView.builder(
                      itemCount: songList.length,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      MusciPlayer(songs: songList,currentSong:index),
                                ));
                              },
                              leading: Image.network((songList[index]).image),
                              title: Text(utilServices
                                  .reduceString(songList[index].trackName)),
                              subtitle: Text(utilServices
                                  .reduceString(songList[index].artistName)),
                              trailing: IconButton(
                                  onPressed: () {
                                    songList[index].isPlaying
                                        ? pauseSong(index)
                                        : playSong(index);
                                  },
                                  icon: Icon(songList[index].isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow)),
                            ),
                          ));
            }
          },
        ),
      ),
    );
  }
}
