import 'package:dio/dio.dart';
import '../../constants/helper.dart';
import '../../constants/stings.dart';

class CharactersWebServices {
  late Dio defaultDio;

  CharactersWebServices() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    defaultDio = Dio(baseOptions);
  }

  Future<dynamic> getCharacters() async {
    Response response = await defaultDio.get('character');
    return response;
  }

  Future<dynamic> getMoreCharacters(String url) async {
    Dio dio = Dio();
    Response response = await dio.get(url);
    return response;
  }
}
