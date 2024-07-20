import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_location_app/features/presentation/views/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:uuid/uuid.dart';
import 'package:http/http.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: const HomePage(),
        );
      }
    );
  }
}

