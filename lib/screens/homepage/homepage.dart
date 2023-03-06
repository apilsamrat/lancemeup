import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lancemeup/screens/homepage/components/customtab/customtab_component.dart';
import 'package:lancemeup/screens/homepage/sub_homepages/projecttools/projecttools_page.dart';
import 'package:lancemeup/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(children: [
                PopupMenuButton(
                  itemBuilder: (context) => [],
                  child: Row(children: [
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(width: 8),
                    const Text("Lancemeup"),
                    const Icon(
                      IconlyLight.arrow_down_2,
                      size: 19.48,
                    )
                  ]),
                )
              ]),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(IconlyLight.search))
              ],
              bottom: TabBar(
                indicatorColor: primaryColor,
                isScrollable: true,
                tabs: const [
                  CustomTab(icon: IconlyLight.work, text: "Project Tools"),
                  CustomTab(
                    icon: IconlyLight.chat,
                    text: "Chat",
                    badgeLabel: "3",
                  ),
                  CustomTab(icon: IconlyLight.folder, text: "Drive"),
                  CustomTab(icon: Icons.av_timer_outlined, text: "Tracking"),
                ],
              )),
          body: const TabBarView(children: [
            ProjectToolsPage(),
            Center(child: Text("Chat")),
            Center(child: Text("Drive")),
            Center(child: Text("Tracking")),
          ]),
        ),
      ),
    );
  }
}
