import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/constants/helper.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';
part 'characters_event.dart';
part 'characters_bloc.freezed.dart';

///Character Bloc responsible for
///managing the the state for the [Character] clss
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  ///Constructor for Characters bloc
  ///Responsible for emiting the initial state and register all events
  CharactersBloc() : super(const CharactersState.initial()) {
    on<Fetch>((event, emit) async => _fetch(emit));
  }

  Future<void> _fetch(Emitter<CharactersState> emit) async {
    if (state is EndOfList) {
      return;
    }
    try {
      if (state is Initial || state is Faild) {
        emit(const LoadInProgress());
        final charactersRepository = CharactersRepository();
        final response = await charactersRepository.getCharacters();
        Log.debug(response);
        emit(Fetched(response));
      } else {
        if ((state as Fetched).apiResponse.info?.next != null) {
          final charactersRepository = CharactersRepository();
          final response = await charactersRepository
              .getMoreCharacters((state as Fetched).apiResponse.info!.next!);
          emit(
            (state as Fetched).copyWith(
              apiResponse: ApiResponse(
                info: response.info,
                data: List.of((state as Fetched).apiResponse.data!)
                  ..addAll(response.data!),
              ),
            ),
          );
        } else {
          emit(const EndOfList());
        }
      }
    } catch (e) {
      emit(Faild(e.toString()));
    }
  }
}
