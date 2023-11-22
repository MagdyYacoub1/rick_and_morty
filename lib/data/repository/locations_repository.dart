import 'package:rick_and_morty/constants/stings.dart';
import 'package:rick_and_morty/data/models/api_response.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/data/models/location.dart';
import 'package:rick_and_morty/data/web_services/web_serviece.dart';

import '../../constants/helper.dart';

///Responsible for getting Characters from json responce
class LocationsRepository {
  ///Creates a repo instance
  static final LocationsRepository _locationsRepository =
      LocationsRepository.internal();

  factory LocationsRepository() => _locationsRepository;

  LocationsRepository.internal() : allLocations = [];
  List<Location> allLocations;

  ///Returns all characters data decoded from Responce
  Future<ApiResponse<Location>> getLocations(int pageCount) async {
    WebService webService = WebService();
    final response = await webService.getRequest(
      ConstantStrings.locationsPath,
      queryParameters: {
        'page': pageCount,
      },
    );
    Log.debug(pageCount);
    allLocations.addAll((response.data['results'] as List<dynamic>)
        .map((e) => Location.fromJson(e))
        .toList());
    final repository = ApiResponse<Location>(
      info: Info.fromJson(response.data['info']),
      data: allLocations,
    );
    return repository;
  }
}
