// ignore_for_file: avoid_dynamic_calls
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/models/location.dart';
import 'package:rick_and_morty/data/web_services/location_web_servieces.dart';

///Responsible for getting Characters from json responce
class LocationsRepository {
  ///Creates a repo instance
  LocationsRepository() : locationsWebServices = LocationWebServices();

  ///Web service responsible for caling api
  final LocationWebServices locationsWebServices;

  ///Returns all characters data decoded from Responce
  Future<ApiResponse<List<Location>>> getLocations() async {
    final response = await locationsWebServices.getLocations();
    //if ((response as Response).statusCode == 200) {
    final repository = ApiResponse<List<Location>>(
      info: Info.fromJson(response.data['info'] as Map<String, dynamic>),
      data: (response.data['results'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
    return repository;
  }

  ///
  Future<ApiResponse<List<Location>>> getMoreLocations(
    String nextPageURL,
  ) async {
    final response = await locationsWebServices.fetchMoreData(nextPageURL);
    final repository = ApiResponse<List<Location>>(
      info: Info.fromJson(response.data['info'] as Map<String, dynamic>),
      data: (response.data['results'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
    return repository;
  }
}
