import 'package:flutter/material.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

List<String> chipItems = [
  "All",
  "Invites",
  "Workspace",
  "Emails",
  "Unread",
];

enum NotificationType {
  download,
  mention,
  reminder,
  removed,
  rejection,
  accepted,
}

class NotificationTileData {
  final NotificationType notificationType;
  final bool isOnline;
  final Widget title;
  final String time;
  final VoidCallback onClick;
  NotificationTileData(
      {required this.notificationType,
      required this.isOnline,
      required this.title,
      required this.time,
      required this.onClick});
}

List<NotificationTileData> notificationData = [];

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int chipSelectedIndex = 0;

  @override
  void initState() {
    notificationData = [
      //1
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "has downloaded ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(
                text: "\"Wireframing Landing Page\" ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),

      //2
      NotificationTileData(
          notificationType: NotificationType.mention,
          isOnline: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "has mentioned you on",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(
                text: "\"Lancemeup workspace\" ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),

      //3
      NotificationTileData(
          notificationType: NotificationType.reminder,
          isOnline: false,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "[REMINDER] Due date of ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            TextSpan(
                text: "Lancemeup Projects ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "task will be comming  ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),

      //4
      NotificationTileData(
          notificationType: NotificationType.removed,
          isOnline: false,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "has removed from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),

      //5
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "reject the invitation from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: false,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "accept the invitation from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: false,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "accept the invitation from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "accept the invitation from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {}),
      NotificationTileData(
          notificationType: NotificationType.download,
          isOnline: true,
          title: Text.rich(TextSpan(children: [
            TextSpan(
                text: "Jane Copper ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: "accept the invitation from workspace ",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
          ])),
          time: "2m ago",
          onClick: () {
            
          }),
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
          child: Text("Notification"),
        ),
        titleTextStyle: headingStyle.copyWith(fontSize: 18),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 10),
            child: Column(
              children: [
                Divider(
                  height: 1,
                  color: grey200,
                ),
              ],
            )),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 56,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: chipItems.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 12);
                },
                itemBuilder: (BuildContext context, int index) {
                  return CustomChip(
                    index: index,
                    onPressed: () {
                      setState(() {
                        chipSelectedIndex = index;
                      });
                    },
                    isSelected: chipSelectedIndex == index,
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notificationData.length,
                  itemBuilder: (context, index) {
                    return NotificationListTile(
                      notificationData: notificationData[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationListTile extends StatelessWidget {
  final NotificationTileData notificationData;
  const NotificationListTile({
    required this.notificationData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> getIconData() {
      switch (notificationData.notificationType) {
        case NotificationType.download:
          return {
            "icon": Icons.file_download_outlined,
            "color": primaryColor,
          };
        case NotificationType.mention:
          return {
            "icon": Icons.alternate_email_outlined,
            "color": primaryGrey,
          };
        case NotificationType.reminder:
          return {
            "icon": Icons.av_timer_outlined,
            "color": const Color(0XFF2F80ED),
          };
        case NotificationType.removed:
          return {
            "icon": Icons.person_remove,
            "color": const Color(0XFFFC4141),
          };
        case NotificationType.rejection:
          return {
            "icon": Icons.cancel_outlined,
            "color": const Color(0XFFEE961B),
          };
        case NotificationType.accepted:
          return {
            "icon": Icons.check_circle_outline_outlined,
            "color": primaryColor,
          };
      }
    }

    return Container(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: ListTile(
        onTap: () {},
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: getIconData()["color"]),
          child: Icon(
            getIconData()["icon"],
            color: Colors.white,
          ),
        ),
        minVerticalPadding: 8,
        contentPadding: const EdgeInsets.all(8),
        title: Wrap(children: [notificationData.title]),
        subtitle: Text(notificationData.time),
        trailing: notificationData.isOnline
            ? Icon(
                Icons.fiber_manual_record,
                size: 8,
                color: primaryColor,
                fill: 1,
              )
            : null,
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final int index;

  final VoidCallback onPressed;
  final bool isSelected;
  const CustomChip(
      {super.key,
      required this.index,
      required this.onPressed,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 10, vertical: 3)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStatePropertyAll(
                isSelected ? primaryColor : Colors.grey.shade100)),
        child: Text(chipItems[index],
            style: primaryTextStyle.copyWith(
                fontSize: 12, color: isSelected ? Colors.white : null)),
      ),
    );
  }
}
