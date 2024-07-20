import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_location_app/features/presentation/controllers/location_controller.dart';
import 'package:my_location_app/features/presentation/views/main_view.dart';
import 'package:my_location_app/features/utils/constants/texts.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.watch(mainProviderCtrl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 36, 60),
        title: const Text(
          ConstantTexts.appBarTitle,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.dangerous),
            onPressed: () {
              c.clearLocations();
            },
          ),
        ],
      ),
      body: const MainScreenView(),
    );
  }
}
