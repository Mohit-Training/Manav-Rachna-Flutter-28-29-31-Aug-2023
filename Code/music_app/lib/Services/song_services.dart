import 'package:music_app/Config/api_url.dart';
import 'package:music_app/Modal/song.dart';
import 'package:music_app/Utils/apiClient.dart';

class SongServices {
  ApiClient apiClient = ApiClient.getInstance();

  SongServices._();

  static getInstance() {
    SongServices songServices = SongServices._();
    return songServices;
  }

  Future<List<Song>> searchSongs(String searchText) async {
      var response =
          await apiClient.get('${ApiUrl.serachSong}?term=$searchText');
      List temp = response['results'];
      List<Song> songList = temp.map((song) => Song.fromJSON(song)).toList();
      return songList;
  }
}
