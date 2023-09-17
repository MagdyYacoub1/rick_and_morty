part of 'characters_bloc.dart';

///Responsilbe for listing all character states for [CharactersBloc]
@freezed
class CharactersState with _$CharactersState {
  ///Initial state means the app just opend
  const factory CharactersState.initial() = Initial;

  ///LoadInProgress state means the app loading data from api
  const factory CharactersState.loadInProgress() = LoadInProgress;

  ///Fetched state means the app finished fetching data from api
  const factory CharactersState.fetched(
    ApiResponse<List<Character>> apiResponse,
  ) = Fetched;

  ///Faild state means the app faild fetching data from api
  const factory CharactersState.faild(String message) = Faild;

  /// Faild state means the we loaded all data from api
  /// and no more data to fetch
  const factory CharactersState.endOfList() = EndOfList;
}
