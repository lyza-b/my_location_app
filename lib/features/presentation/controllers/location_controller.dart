import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_location_app/features/data/repo/location_repo.dart';
import 'package:my_location_app/features/domain/location_model.dart';
//import 'package:http/http.dart' as http;
//import 'package:my_location_app/features/domain/location_model.dart';
final locatonRepoProvider = Provider((ref) => LocationRepo());
class VisibilityController extends ChangeNotifier {

final ChangeNotifierProviderRef ref;

VisibilityController({
  required this.ref
});


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
    List<LocationModel> list = [];

    Future<List<LocationModel>> getLocation() async {
    

 
      list = await ref.read(locatonRepoProvider).getLocation( 
      searchController.text);

      notifyListeners();
      return list;

    
  
  }
}

final mainProviderCtrl = ChangeNotifierProvider<VisibilityController>(
    (ref) => VisibilityController(ref:ref));

//I don't really get this part


// final changeLocationProvider =
//     ChangeNotifierProvider<ChangeLocationNotifier>(
//         (ref) =>ChangeLocationNotifier());


// class ChangeLocationNotifier extends ChangeNotifier{
//   @override
//   Future<List<LocationModel>> build() async {
//     return getLocation();
//   }



  
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

