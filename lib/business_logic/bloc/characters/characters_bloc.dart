import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';
part 'characters_event.dart';
part 'characters_bloc.freezed.dart';

///Character Bloc responsible for
///managing the the state for the [Character] class
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  ///Constructor for Characters bloc
  ///Responsible for emiting the initial state and register all events
  CharactersBloc() : super(const CharactersState.characterLoadInProgress()) {
    on<CharacterFetch>((event, emit) async => _fetch(emit));
    on<CharacterFetchMore>((event, emit) async => _fetchMore(emit));
  }

  /// Currently selected character by user to display more details
  Character? currentlySelectedCharacter;
  int _pageCount = 1;

  Future<void> _fetch(Emitter<CharactersState> emit) async {
    _pageCount = 1;
    try {
      emit(const CharcterLoadInProgress());
      final charactersRepository = CharactersRepository();
      final response = await charactersRepository.getCharacters(_pageCount);
      emit(CharacterFetched(response));
    } catch (e) {
      emit(CharacterFaild(e.toString()));
    }
  }

  Future<void> _fetchMore(Emitter<CharactersState> emit) async {
    final charactersRepository = CharactersRepository();
    if (_pageCount < (state as CharacterFetched).apiResponse.info.pages) {
      emit(CharcterLoadMoreInProgress(charactersRepository.allCharacters));
      try {
        _pageCount++;
        final response = await charactersRepository.getCharacters(_pageCount);
        emit(CharacterFetched(response));
      } catch (e) {
        emit(CharacterFaild(e.toString()));
      }
    } else {
      emit(CharacterEndOfList(charactersRepository.allCharacters));
    }
  }
}
