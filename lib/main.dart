import 'package:flutter/material.dart';
import 'package:lancemeup/routes.dart';
import 'package:lancemeup/styles/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool("isFirstTime") ?? true;
  runApp(MainApp(isFirstTime: isFirstTime));
}

class MainApp extends StatefulWidget {
  final bool? isFirstTime;
  const MainApp({super.key, this.isFirstTime});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LanceMe Up",
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: "/",
      routes: approutes,
    );
  }
}
