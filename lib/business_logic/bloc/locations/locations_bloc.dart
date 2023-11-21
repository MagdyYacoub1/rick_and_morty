import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/location.dart';
import 'package:rick_and_morty/data/repository/locations_repository.dart';

part 'locations_state.dart';
part 'locations_event.dart';
part 'locations_bloc.freezed.dart';

/// Locations Bloc responsible for
/// managing the the state for the [Location] class
class LocationBloc extends Bloc<LocationsEvent, LocationState> {
  ///Constructor for Location bloc
  ///Responsible for emiting the initial state and register all events
  LocationBloc() : super(const LocationState.locationLoadInProgress()) {
    on<LocationFetch>((event, emit) async => _fetch(emit));
    on<LocationFetchMore>((event, emit) async => _fetchMore(emit));
  }

  /// Currently selected character by user to display more details
  Location? currentlySelectedCharacter;
  int _pageCount = 1;

  Future<void> _fetch(Emitter<LocationState> emit) async {
    _pageCount = 1;
    try {
      emit(const LocationLoadInProgress());
      final locationsRepository = LocationsRepository();
      final response = await locationsRepository.getLocations(_pageCount);
      emit(LocationFetched(response));
    } catch (e) {
      emit(
        const LocationFaild(
          'Unable to load data \n Please check your network',
        ),
      );
    }
  }

  Future<void> _fetchMore(Emitter<LocationState> emit) async {
    if (_pageCount <= (state as LocationFetched).apiResponse.info.pages) {
      try {
        final locationsRepository = LocationsRepository();
        _pageCount++;
        final response = await locationsRepository.getLocations(_pageCount);
        emit(LocationFetched(response));
      } catch (e) {
        emit(const LocationFaild(
            'Unable to load data \n Please check your network'));
      }
    } else {
      emit(const LocationEndOfList());
    }
  }
}
