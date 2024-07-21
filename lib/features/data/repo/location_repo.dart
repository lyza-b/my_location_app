import 'package:my_location_app/features/domain/location_model.dart';
import 'package:my_location_app/features/data/services/location_service.dart';

class LocationRepo {
  final LocationService _locationService;

// Ask Akovoyon why this is done this way
  LocationRepo({LocationService? locationService})
      : _locationService = locationService ?? LocationService();

  Future<List<LocationModel>> getLocation(String text) async {
    return await _locationService.getLocation(text);
  }
}
