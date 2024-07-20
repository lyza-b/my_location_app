class LocationModel {
  String description;
  String placeId;

  LocationModel({
    required this.description,
    required this.placeId,
  });

  factory LocationModel.fromJSON(Map<String, dynamic> location) {
    return LocationModel(
      description: location["description"],
      placeId: 'place_id',
    );
  }
}


//  {
//         "description": "Paris, France",
//         "matched_substrings": [{ "length": 5, "offset": 0 }],
//         "place_id": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
//         "reference": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
//         "structured_formatting":
//           {
//             "main_text": "Paris",
//             "main_text_matched_substrings": [{ "length": 5, "offset": 0 }],
//             "secondary_text": "France",
//           },
//         "terms":
//           [
//             { "offset": 0, "value": "Paris" },
//             { "offset": 7, "value": "France" },
//           ],
//         "types": ["locality", "political", "geocode"],
//       },