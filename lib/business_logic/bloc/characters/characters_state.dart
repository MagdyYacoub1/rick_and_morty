part of 'characters_bloc.dart';

///Responsilbe for listing all character states for [CharactersBloc]
@freezed
class CharactersState with _$CharactersState {
  /// Initial state means the app just opend`
  //const factory CharactersState.charcterInitial() = CharacterInitial;

  /// LoadInProgress state means the app loading data from api
  const factory CharactersState.characterLoadInProgress() =
      CharcterLoadInProgress;

  /// LoadMoreInProgress state means the app loading more data from api
  const factory CharactersState.characterLoadMoreInProgress(
    List<Character> characters,
  ) = CharcterLoadMoreInProgress;

  /// Fetched state means the app finished fetching data from api
  const factory CharactersState.characterFetched(
    ApiResponse<Character> apiResponse,
  ) = CharacterFetched;

  /// Faild state means the app faild fetching data from api
  const factory CharactersState.characterFaild(String message) = CharacterFaild;

  /// End Of List state means the we loaded all data from api
  /// and no more data to fetch
  const factory CharactersState.characterEndOfList() = CharacterEndOfList;
}
