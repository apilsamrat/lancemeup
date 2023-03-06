import 'package:flutter/material.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

import 'components/email_tile.dart';
import 'components/resource.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 200),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(color: grey200, width: 1))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: primaryBlack,
                ),
                Flexible(
                    child: SizedBox(
                  height: 34,
                  child: TextFormField(
                    style: lightBodytextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: "Search mails",
                        border: OutlineInputBorder()),
                  ),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      foregroundImage: AssetImage("assets/images/profile.png"),
                    ))
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  "All Inbox",
                  style: bodytextStyle,
                ),
              ),
              const EmailTile(
                favorite: false,
                avatarImage: "assets/images/emailPerson.png",
                heading: "Welcome to LMU mailer",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                important: false,
                seen: true,
                time: "8:00 AM",
              ),
              const EmailTile(
                favorite: true,
                heading: "Unread email & starred",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                important: false,
                seen: false,
                time: "Dec 19",
              ),
              const EmailTile(
                favorite: false,
                heading: "Important Email",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                important: true,
                seen: true,
                time: "Dec 18",
              ),
              EmailTile(
                favorite: false,
                heading: "Email with Attachment",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                important: false,
                seen: true,
                attachment: Attachment(
                    fileType: FileType.image, name: "CoverPreview.jpg"),
                time: "8:00 AM",
              ),
              EmailTile(
                favorite: false,
                heading: "Email with zip Attachment",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                important: false,
                seen: true,
                attachment: Attachment(
                    fileType: FileType.image, name: "Image_file.zip"),
                time: "8:00 AM",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: otherColorSoftGreen,
          foregroundColor: primaryBlack,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          extendedTextStyle: primaryTextStyle.copyWith(fontSize: 12),
          icon: const Icon(Icons.edit_outlined),
          onPressed: () {},
          label: const Text("Compose New Email")),
    );
  }
}
