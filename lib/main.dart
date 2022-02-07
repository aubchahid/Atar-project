import 'package:atar/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: const Color.fromRGBO(43, 192, 22, 1),
        primaryColorDark: const Color.fromRGBO(90, 89, 90, 1),
      ),
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Glucotel',
        theme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: const Color.fromRGBO(43, 192, 22, 1),
          primaryColorDark: const Color.fromRGBO(90, 89, 90, 1),
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(375, 812),
    );
  }
}
