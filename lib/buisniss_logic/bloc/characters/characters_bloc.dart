import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../constants/helper.dart';
import '../../../data/models/api_response.dart';
import '../../../data/models/character.dart';
import '../../../data/repository/characters_repository.dart';

part 'characters_state.dart';
part 'characters_event.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(const CharactersState.initial()) {
    on<Fetch>((event, emit) async => _fetch(emit));
  }

  _fetch(Emitter<CharactersState> emit) async {
    if (state is EndOfList) {
      return;
    }
    try {
      if (state is Initial || state is Faild) {
        emit(const LoadInProgress());
        CharactersRepository charactersRepository = CharactersRepository();
        ApiResponse<List<Character>> response =
            await charactersRepository.getCharacters();
        emit(Fetched(response));
      } else {
        if ((state as Fetched).apiResponse.info?.next != null) {
          CharactersRepository charactersRepository = CharactersRepository();
          ApiResponse<List<Character>> response = await charactersRepository
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
