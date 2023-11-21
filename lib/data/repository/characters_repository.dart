// ignore_for_file: avoid_dynamic_calls
import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/web_services/web_serviece.dart';

///Responsible for getting Characters from json responce
class CharactersRepository {
  ///Creates a repo instance
  static final CharactersRepository _characterRepository =
      CharactersRepository.internal();

  factory CharactersRepository() => _characterRepository;

  CharactersRepository.internal() : allCharacters = [];
  List<Character> allCharacters;

  ///Returns all characters data decoded from Responce
  Future<ApiResponse<Character>> getCharacters(int pageCount) async {
    final WebService webService = WebService();
    final response = await webService.getRequest(
      ConstantStrings.charactersPath,
      queryParameters: {
        'page': pageCount,
      },
    );
    allCharacters.addAll((response.data['results'] as List<dynamic>)
        .map((e) => Character.fromJson(e))
        .toList());
    final repository = ApiResponse<Character>(
      info: Info.fromJson(response.data['info']),
      data: allCharacters,
    );
    return repository;
  }
}
