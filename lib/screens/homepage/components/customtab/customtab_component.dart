import 'package:flutter/material.dart';
import 'package:lancemeup/utils/colors.dart';
class CustomTab extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? badgeLabel;
  const CustomTab({
    super.key,
    required this.icon,
    required this.text,
    this.badgeLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Badge(
                label: Text(badgeLabel ?? ""),
                textColor: Colors.white,
                backgroundColor: primaryColor,
                isLabelVisible: badgeLabel != null,
                child: Icon(
                  icon,
                  size: 21.49,
                ),
              ),
              const SizedBox(width: 10),
              Text(text)
            ]));
  }
}
