part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;
  const factory CharactersState.loadInProgress() = _LoadInProgress;
  const factory CharactersState.fetched(
      ApiResponse<List<Character>> apiResponse) = _fetched;
  const factory CharactersState.faild() = _faild;
  const factory CharactersState.endOfList(
      ApiResponse<List<Character>> apiResponse) = _endOfList;
}
