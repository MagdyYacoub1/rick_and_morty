// ignore_for_file: avoid_dynamic_calls
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/web_services/character_web_servieces.dart';

///Responsible for getting Characters from json responce
class CharactersRepository {
  ///Creates a repo instance
  CharactersRepository() : charactersWebServices = CharactersWebServices();

  ///Web service responsible for caling api
  final CharactersWebServices charactersWebServices;

  ///Returns all characters data decoded from Responce
  Future<ApiResponse<List<Character>>> getCharacters() async {
    final response = await charactersWebServices.getCharacters();
    //if ((response as Response).statusCode == 200) {
    final repository = ApiResponse<List<Character>>(
      info: Info.fromJson(response.data['info'] as Map<String, dynamic>),
      data: (response.data['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
    return repository;
  }

  ///
  Future<ApiResponse<List<Character>>> getMoreCharacters(
    String nextPageURL,
  ) async {
    final response = await charactersWebServices.getMoreCharacters(nextPageURL);
    //if (response.statusCode == 200) {
    final repository = ApiResponse<List<Character>>(
      info: Info.fromJson(response.data['info'] as Map<String, String>),
      data: (response.data['results'] as List<Map<String, dynamic>>)
          .map(Character.fromJson)
          .toList(),
    );
    return repository;
  }
}
