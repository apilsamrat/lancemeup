import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lancemeup/screens/emailpage/emailpage.dart';
import 'package:lancemeup/screens/homepage/homepage.dart';
import 'package:lancemeup/screens/notificationpage/notificationpage.dart';
import 'package:lancemeup/screens/profilepage/profilepage.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  PageController primaryPagesController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
              primaryPagesController.animateToPage(value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(IconlyLight.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Badge(
                      label: Text("3"), child: Icon(Icons.email_outlined)),
                  label: "Email"),
              BottomNavigationBarItem(
                  icon: Badge(child: Icon(IconlyLight.message)),
                  label: "Notification"),
              BottomNavigationBarItem(
                  icon: Badge(child: Icon(IconlyLight.profile)),
                  label: "Profile"),
            ]),
        body: PageView(
          controller: primaryPagesController,
          physics: const NeverScrollableScrollPhysics(),
          allowImplicitScrolling: false,
          pageSnapping: true,
          children: const [
            HomePage(),
            Center(child: Text("Search")),
            EmailPage(),
            NotificationPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
