import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import './route/routers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: Routes,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(236, 235, 240, 1),
          appBarTheme: AppBarTheme(scrolledUnderElevation: 0.0)),
    );
  }
}
