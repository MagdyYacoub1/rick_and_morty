import 'package:dio/dio.dart';

import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/data/models/error.dart';

///Web service responsible for characters model
class CharactersWebServices {
  ///Creates a web service to retrive characters data from API
  CharactersWebServices() {
    final baseOptions = BaseOptions(
      baseUrl: ConstantStrings.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    defaultDio = Dio(baseOptions);
  }

  ///Used to communicate with API using the base url
  late Dio defaultDio;

  /// Returns a list of characters limited by the page limit
  Future<dynamic> getCharacters() async {
    try {
      final response = await defaultDio.get<dynamic>('character');
      return response;
    } catch (e) {
      throw Exceptions(e.toString());
    }
  }

  /// Returns next page of characters
  Future<dynamic> fetchMoreData(String url) async {
    final response = await Dio().get<dynamic>(url);
    return response;
  }
}
