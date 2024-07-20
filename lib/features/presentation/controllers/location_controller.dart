import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:http/http.dart' as http;
//import 'package:my_location_app/features/domain/location_model.dart';

class VisibilityController extends ChangeNotifier {
  bool visible = false;

  updateVisibility() {
    visible = true;
    notifyListeners();
  }

  clearLocations() {
    visible = false;
    notifyListeners();
  }

  final searchController = TextEditingController();
}

final mainProviderCtrl = ChangeNotifierProvider<VisibilityController>(
    (ref) => VisibilityController());

//I don't really get this part


// class AsyncLocationNotifier extends AsyncNotifier<List<LocationModel>> {
//   @override
//   Future<List<LocationModel>> build() async {}
// }


// class AsyncNewsNotifier extends AsyncNotifier<List<NewsModel>> {
//   @override
//   FutureOr<List<NewsModel>> build() {
//     return getNews();
//   }

//   Future<List<NewsModel>> getNews() async {
//     state = const AsyncLoading();
//     List<NewsModel> list = [];
//     state = await AsyncValue.guard(() async {
//       list = (await ref.read(newsRepoProvider).getNews()).cast<NewsModel>();
//       return list;
//     });
//     return list;
//   }
// }

