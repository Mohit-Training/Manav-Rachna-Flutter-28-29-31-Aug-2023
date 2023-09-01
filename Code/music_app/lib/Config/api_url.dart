import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiUrl {
  static final String serachSong = "${dotenv.env['BASE_URL']}";
}
