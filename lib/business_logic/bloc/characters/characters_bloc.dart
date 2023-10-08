import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/constants/helper.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/location.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';

part 'characters_state.dart';
part 'characters_event.dart';
part 'characters_bloc.freezed.dart';

///Character Bloc responsible for
///managing the the state for the [Character] class
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  ///Constructor for Characters bloc
  ///Responsible for emiting the initial state and register all events
  CharactersBloc() : super(const CharactersState.charcterInitial()) {
    on<Fetch>((event, emit) async => _fetch(emit));
    on<FetchMore>((event, emit) async => _fetchMore(emit));
  }

  /// Currently selected character by user to display more details
  Character? currentlySelectedCharacter;

  Future<void> _fetch(Emitter<CharactersState> emit) async {
    if (state is EndOfList) {
      return;
    }
    try {
      emit(const LoadInProgress());
      final charactersRepository = CharactersRepository();
      final response = await charactersRepository.getCharacters();
      emit(Fetched(response));
    } catch (e) {
      emit(const Faild('Unable to load data \n Please check your network'));
    }
  }

  Future<void> _fetchMore(Emitter<CharactersState> emit) async {
    if ((state as Fetched).apiResponse.info?.next != null) {
      try {
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
      } catch (e) {
        emit(const Faild('Unable to load data \n Please check your network'));
      }
    } else {
      emit(const EndOfList());
    }
  }
}
