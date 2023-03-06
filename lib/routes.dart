import 'package:flutter/material.dart';
import 'package:lancemeup/screens/primaryscreen/primarypage.dart';
import 'package:lancemeup/screens/signin/signin_page.dart';
import 'package:lancemeup/screens/walkthrough/walkthrough.dart';

Map<String, Widget Function(BuildContext)> approutes = {
  "/": (_) => const AppWalkThrough(),
  "/signin": (_) => const SigninPage(),
  "/home": (_) => const PrimaryScreen(),
};
