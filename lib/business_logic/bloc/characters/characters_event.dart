part of 'characters_bloc.dart';

/// Responsilbe for listing all character events for [CharactersBloc]
@freezed
class CharactersEvent with _$CharactersEvent {
  ///Used to fetch data from [CharactersRepository]
  const factory CharactersEvent.characterFetch() = CharacterFetch;

  ///Fetch more data from api given next page url
  const factory CharactersEvent.characterFetchMore() = CharacterFetchMore;

  /// Fetch data locations related to current displayed character
  const factory CharactersEvent.fetchCharacterLocations() =
      FetchCharacterLocations;
}
