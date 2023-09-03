import 'package:dio/dio.dart';
import 'package:rick_and_morty/constants/helper.dart';
import 'package:rick_and_morty/constants/stings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    dio = Dio(baseOptions);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      Log.debug(response.data);
      return response.data;
    } catch (e) {
      Log.debug(e);
      return Future.error(e);
    }
  }
}
