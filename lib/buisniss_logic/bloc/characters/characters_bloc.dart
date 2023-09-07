import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';
part 'characters_event.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(const CharactersState.loadInProgress()) {
    on<CharactersEvent>(event, emit) {
      event.map(fetch: (_) async => await _fetch(emit));
    }
  }

  _fetch(Emitter<CharactersState> emit) async {
    try {
      if (state is _endOfList) {
        return;
        // emit(_fetched((state as _fetched).charactersRepository));
      } else if (state is _Initial) {
        CharactersRepository charactersRepository = CharactersRepository();
        ApiResponse<List<Character>> response =
            await charactersRepository.getCharacters();
        emit(_fetched(response));
      } else {
        if ((state as _fetched).apiResponse.info?.next != null) {
          CharactersRepository charactersRepository = CharactersRepository();
          ApiResponse<List<Character>> response = await charactersRepository
              .getMoreCharacters((state as _fetched).apiResponse.info!.next);
          emit(
            (state as _fetched).copyWith(
              apiResponse: ApiResponse(
                info: response.info,
                data: List.of((state as _fetched).apiResponse.data!)
                  ..addAll(response.data!),
              ),
            ),
          );
        }
      }
    } catch (_) {
      emit(const _faild());
    }
  }
}
