import 'package:flutter/material.dart';
import 'package:lancemeup/styles/buttonstyle.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class SettingsTileData {
  final IconData icon;
  final String title;
  SettingsTileData({required this.icon, required this.title});
}

List<SettingsTileData> settingTileDataList = [];

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    settingTileDataList = [
      SettingsTileData(icon: Icons.person_search_outlined, title: "Set Status"),
      SettingsTileData(icon: Icons.person_outline, title: "Account"),
      SettingsTileData(icon: Icons.watch_later_outlined, title: "Activity"),
      SettingsTileData(icon: Icons.people_outline, title: "Connetions"),
      SettingsTileData(
          icon: Icons.notifications_none_outlined, title: "Notification"),
      SettingsTileData(icon: Icons.color_lens_outlined, title: "Appearance"),
      SettingsTileData(icon: Icons.shield_outlined, title: "Privacy Policy"),
      SettingsTileData(
          icon: Icons.file_open_outlined, title: "Terms and Conditions"),
      SettingsTileData(
          icon: Icons.help_outline_outlined, title: "Help and Support"),
      SettingsTileData(icon: Icons.help_outline_outlined, title: "FAQs"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Text("Profile"),
        ),
        titleTextStyle: headingStyle.copyWith(fontSize: 18),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom:
                          BorderSide(width: 1, color: Colors.grey.shade200))),
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: ListTile(
                leading: const CircleAvatar(
                  foregroundImage: AssetImage("assets/images/emailPerson.png"),
                ),
                title: Text(
                  "Jane Coper",
                  style: headingStyle.copyWith(fontSize: 16),
                ),
                subtitle: Text(
                  "janecopper@gmail.com",
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                if (index == 4 || index == 6) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          index == 4
                              ? "App Settings"
                              : index == 6
                                  ? "More"
                                  : "",
                          style: primaryTextStyle,
                        ),
                      ),
                      SettingListTile(
                        index: index,
                        data: settingTileDataList[index],
                      )
                    ],
                  );
                }
                return SettingListTile(
                  index: index,
                  data: settingTileDataList[index],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Account",
                style: primaryTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 52),
              child: TextButton.icon(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: false,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                  child: Container(
                                    width: 48,
                                    height: 4,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: primaryBlack),
                                  ),
                                ),
                              ),
                              Text(
                                "Are you Sure?",
                                style: headingStyle.copyWith(fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                                child: Text(
                                  "Are you sure you want to Logout from the workspace?",
                                  style:
                                      lightBodytextStyle.copyWith(fontSize: 14),
                                ),
                              ),
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
                                          Navigator.pushNamedAndRemoveUntil(
                                              context, "/", (route) => false);
                                        },
                                        style: primaryButtonStyle.copyWith(
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                                    Color(0XFFFC4141))),
                                        child: const Text("Logout")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 28, bottom: 0),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: primaryTransparentButtonStyle
                                            .copyWith(
                                                textStyle:
                                                    MaterialStatePropertyAll(
                                                        lightBodytextStyle
                                                            .copyWith(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                foregroundColor:
                                                    MaterialStatePropertyAll(
                                                        primaryGrey)),
                                        child: const Text("Cancel")),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
                style: ButtonStyle(
                    foregroundColor:
                        const MaterialStatePropertyAll(Color(0XFFFC4141)),
                    textStyle: MaterialStatePropertyAll(
                        primaryTextStyle.copyWith(
                            color: const Color(0XFFFC4141), fontSize: 14))),
                icon: const Icon(
                  Icons.logout_outlined,
                ),
                label: const Text("Logout"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingListTile extends StatelessWidget {
  final SettingsTileData data;
  final int index;
  const SettingListTile({
    super.key,
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      minVerticalPadding: 16,
      leading: Icon(
        data.icon,
      ),
      title: Text(
        data.title,
        style: primaryTextStyle.copyWith(fontSize: 14),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          index == 0
              ? Icon(
                  Icons.fiber_manual_record,
                  size: 4,
                  color: primaryColor,
                )
              : const SizedBox(
                  width: 0,
                ),
          const SizedBox(width: 6),
          Text(
            index == 0
                ? "Online"
                : index == 5
                    ? "Light"
                    : "",
            style: primaryTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(width: 16),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 8,
          )
        ],
      ),
    );
  }
}
