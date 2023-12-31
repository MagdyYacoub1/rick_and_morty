part of 'locations_bloc.dart';

///Responsilbe for listing all character states for [LocationBloc]
@freezed
class LocationState with _$LocationState {
  ///Initial state means the Location page just opend
  //const factory LocationState.locationInitial() = LocationInitial;

  /// LoadInProgress state means the app loading data from api
  const factory LocationState.locationLoadInProgress() = LocationLoadInProgress;

  /// LoadMoreInProgress state means the app loading more data from api
  const factory LocationState.locationLoadMoreInProgress(
    List<Location> allLocations,
  ) = LocationLoadMoreInProgress;

  /// Fetched state means the app finished fetching data from api
  const factory LocationState.locationFetched(
    ApiResponse<Location> apiResponse,
  ) = LocationFetched;

  ///Faild state means the app faild fetching data from api
  const factory LocationState.locationFaild(String message) = LocationFaild;

  /// End Of List state means the we loaded all data from api
  /// and no more data to fetch
  const factory LocationState.locationEndOfList(
    List<Location> allLocations,
  ) = LocationEndOfList;
}
