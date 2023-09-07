import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/web_services/character_web_servieces.dart';

import '../models/character.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository() : charactersWebServices = CharactersWebServices();

  Future<ApiResponse<List<Character>>> getCharacters() async {
    final Response response = await charactersWebServices.getCharacters();
    if (response.statusCode == 200) {
      ApiResponse<List<Character>> repository = ApiResponse<List<Character>>(
        info: Info.fromJson(response.data['info']),
        data: (response.data['results'] as List)
            .map((e) => Character.fromJson(e))
            .toList(),
      );
      return repository;
    }
    throw ('error fetching posts');
  }

  Future<ApiResponse<List<Character>>> getMoreCharacters(
      String nextPageURL) async {
    final Response response =
        await charactersWebServices.getMoreCharacters(nextPageURL);
    if (response.statusCode == 200) {
      ApiResponse<List<Character>> repository = ApiResponse<List<Character>>(
        info: Info.fromJson(response.data['info']),
        data: (response.data['results'] as List)
            .map((e) => Character.fromJson(e))
            .toList(),
      );
      return repository;
    }
    throw ('error fetching posts');
  }
}
