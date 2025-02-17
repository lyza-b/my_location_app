import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_location_app/features/presentation/controllers/location_controller.dart';
import 'package:my_location_app/features/utils/constants/texts.dart';

class MainScreenView extends ConsumerWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    return Consumer(
      builder: (context, ref, child) {
    final m = ref.watch(mainProviderCtrl);
        return  Column(
        children: [
          TextField(
            controller:m.searchController,
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              hintText: ConstantTexts.hintText,
            ),
            onChanged: (e) {
              ref.read(mainProviderCtrl).updateVisibility();
  m.getLocation();



            },
          ),
          Visibility(
            visible: m.visible,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                     onTap: () {},
                 // leading: Text("location$index"),
                  title: Text( m.list[index].description),
                  trailing: const Icon(Icons.my_location),
                );
              },
              itemCount: m.list.length,
            ),
          ),

          8.verticalSpace,

          Visibility(
            visible: !m.visible,
            child: Container(
              // margin: const EdgeInsets.all(14),
              //padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color.fromARGB(255, 196, 221, 241),
              ),

              child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.my_location),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        ConstantTexts.useCurrentLocation,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      );
          
      
      },
     
    );
  }
}
