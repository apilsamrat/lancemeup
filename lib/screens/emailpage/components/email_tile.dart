import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lancemeup/screens/emailpage/components/resource.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

class EmailTile extends StatefulWidget {
  final bool favorite;
  final String heading;
  final String content;
  final String? avatarImage;
  final bool important;
  final bool seen;
  final String time;
  final Attachment? attachment;
  const EmailTile({
    super.key,
    required this.favorite,
    required this.heading,
    required this.content,
    this.avatarImage,
    required this.important,
    required this.seen,
    required this.time,
    this.attachment,
  });

  @override
  State<EmailTile> createState() => _EmailTileState();
}

class _EmailTileState extends State<EmailTile> {
  bool favourite = false;

  @override
  void initState() {
    favourite = widget.favorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom: BorderSide(color: grey200, width: 1))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: CircleAvatar(
                    radius: 32,
                    foregroundImage: widget.avatarImage != null
                        ? AssetImage(widget.avatarImage!)
                        : null,
                    backgroundColor: otherColorSoftGreen,
                    child: widget.avatarImage == null
                        ? Text(
                            "A",
                            style: headingStyle.copyWith(fontSize: 16),
                          )
                        : null),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          widget.important
                              ? const Padding(
                                  padding: EdgeInsets.only(right: 7),
                                  child: Icon(
                                    Icons.label_important,
                                    color: Color(0XFF1C6DF0),
                                  ),
                                )
                              : const SizedBox(
                                  width: 0,
                                ),
                          Text(
                            widget.heading,
                            softWrap: true,
                            style: widget.seen
                                ? headingStyle.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 16)
                                : headingStyle.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        widget.time,
                        style: widget.seen
                            ? headingStyle.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 16)
                            : headingStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.content,
                        style: widget.seen
                            ? lightBodytextStyle.copyWith(fontSize: 16)
                            : primaryTextStyle.copyWith(
                                fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            favourite = !favourite;
                          });
                        },
                        icon: favourite
                            ? const Icon(IconlyBold.star,
                                color: Color(0XFFEE961B))
                            : Icon(IconlyLight.star, color: primaryBlack),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                widget.attachment != null
                    ? InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: grey200, width: 1),
                              borderRadius: BorderRadius.circular(4)),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                widget.attachment!.fileType == FileType.image
                                    ? IconlyLight.image
                                    : IconlyLight.document,
                                color: primaryBlack,
                              ),
                              const SizedBox(width: 8),
                              Text(widget.attachment!.name,
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1))
                            ],
                          ),
                        ),
                      )
                    : const SizedBox(height: 0),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
