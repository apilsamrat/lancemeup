import 'package:flutter/material.dart';
import 'package:lancemeup/routes.dart';
import 'package:lancemeup/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

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
