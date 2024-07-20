import 'dart:convert';

import 'package:http/http.dart' as http;
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_location_app/features/domain/location_model.dart';
import 'package:my_location_app/features/utils/app_utils/key.dart';

class LocationService {
  Future<List<LocationModel>> getLocation() async {
    List<LocationModel> list = [];
    const url =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${AppUtils.locationKey}";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode < 300) {
      //response.body is the "source"
      final jsonResponse = jsonDecode(response.body);
      for(final location in jsonResponse['predictions']) {
        list.add(LocationModel.fromJSON(location));
      }
    } else {
      throw Exception('Failed to load location data');
    }
    return list;
  }
}
