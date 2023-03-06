import 'package:flutter/material.dart';
import 'package:lancemeup/screens/homepage/components/imagestack/imagestack_component.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final List<List<String>> tableContents;
  final List<String> images;

  final double progress;

  const CustomCard(
      {super.key,
      required this.title,
      required this.progress,
      required this.tableContents,
      required this.images});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200, width: 2),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: headingStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(width: 11),
              const Icon(
                Icons.language_outlined,
                size: 18,
              ),
              const Flexible(
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
              PopupMenuButton(
                color: primaryBlack,
                itemBuilder: (context) => [],
              ),
            ],
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(0.35),
              1: FlexColumnWidth(1),
            },
            children: widget.tableContents.map((e) {
              return TableRow(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    e[0],
                    style: lightBodytextStyle,
                  ),
                ),
                Text(
                  e[1],
                  style: headingStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ]);
            }).toList(),
          ),
          const SizedBox(height: 20.43),
          Row(
            children: [
              Flexible(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: LinearProgressIndicator(
                      value: widget.progress / 100,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "${widget.progress.toString()}%",
                  style: numberText,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.47),
          ImageStack(
            images: widget.images,
          ),
        ],
      ),
    );
  }
}
