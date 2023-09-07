part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = Initial;
  const factory CharactersState.loadInProgress() = LoadInProgress;
  const factory CharactersState.fetched(
      ApiResponse<List<Character>> apiResponse) = Fetched;
  const factory CharactersState.faild(String message) = Faild;
  const factory CharactersState.endOfList() = EndOfList;
}
