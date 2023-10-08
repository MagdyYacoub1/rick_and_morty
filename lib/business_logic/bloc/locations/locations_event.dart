part of 'locations_bloc.dart';

/// Responsilbe for listing all location events for [LocationBloc]
@freezed
class LocationsEvent with _$LocationsEvent {
  ///Used to fetch data from [LocationsRepository]
  const factory LocationsEvent.locationFetch() = LocationFetch;

  ///Fetch more data from api given next page url
  const factory LocationsEvent.locationFetchMore() = LocationFetchMore;

  /// Fetch data locations related to current displayed character
  const factory LocationsEvent.fetchCharacterLocation() =
      FetchCharacterLocations;
}
