import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lancemeup/globalcomponents/exit_dialog.dart';
import 'package:lancemeup/screens/homepage/components/customtab/customtab_component.dart';
import 'package:lancemeup/screens/homepage/sub_homepages/projecttools/projecttools_page.dart';
import 'package:lancemeup/styles/buttonstyle.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

bool bottomShown = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    if (!bottomShown) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          initial();
        },
      );
    }
    super.initState();
  }

  launchurl({required String url}) {
    launchUrlString(url, mode: LaunchMode.externalApplication);
  }

  initial() async {
    bottomShown = await showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              Navigator.pop(context, true);
              return true;
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Container(
                        width: 48,
                        height: 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: primaryBlack),
                      ),
                    ),
                  ),
                  Text(
                    "Did you know?",
                    style: headingStyle.copyWith(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                    child: Text(
                      "You can contribute on github to make this app even better..",
                      style: primaryTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: TextButton(
                        onPressed: () {
                          launchurl(
                              url: "https://github.com/apilsamrat/lancemeup");
                        },
                        child: const Text(
                            "https://github.com/apilsamrat/lancemeup")),
                  ),
                  Text(
                    "Developer's Profile:",
                    style: headingStyle.copyWith(fontSize: 17),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        launchurl(url: "https://github.com/apilsamrat");
                      },
                      icon: Image.asset(
                        "assets/socialicons/githubicon.png",
                        width: 20,
                      ),
                      label: const Text("Github")),
                  TextButton.icon(
                      onPressed: () {
                        launchurl(
                            url: "https://www.linkedin.com/in/apilsamrat/");
                      },
                      icon: Image.asset(
                        "assets/socialicons/linkedinicon.png",
                        width: 20,
                      ),
                      label: const Text("Linkedin")),
                  TextButton.icon(
                      onPressed: () {
                        launchurl(url: "https://facebook.com/apilsamratpoudel");
                      },
                      icon: Image.asset(
                        "assets/socialicons/facebookicon.png",
                        width: 20,
                      ),
                      label: const Text("Facebook")),
                  TextButton.icon(
                      onPressed: () {
                        launchurl(url: "https://www.apilpoudel.com.np");
                      },
                      icon: const Icon(
                        Icons.public,
                        size: 20,
                        color: Colors.black,
                      ),
                      label: const Text("Website")),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            style: primaryButtonStyle.copyWith(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color(0XFFFC4141))),
                            child: const Text("I Know")),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

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
                    Image.asset(
                      "assets/images/icon_transparent.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text("Lance up"),
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
