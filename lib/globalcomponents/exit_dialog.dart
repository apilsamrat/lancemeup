import 'package:flutter/material.dart';
import 'package:lancemeup/styles/buttonstyle.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

Future<bool> showExitDialog({required BuildContext context})async{
  return await showModalBottomSheet(
            context: context,
            useSafeArea: true,
            isDismissible: false,
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
                      "Are you Sure?",
                      style: headingStyle.copyWith(fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                      child: Text(
                        "Are you sure you want to exit",
                        style: lightBodytextStyle.copyWith(fontSize: 14),
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
                                Navigator.pop(context, true);
                              },
                              style: primaryButtonStyle.copyWith(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Color(0XFFFC4141))),
                              child: const Text("Exit")),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18, bottom: 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              style: primaryTransparentButtonStyle.copyWith(
                                  textStyle: MaterialStatePropertyAll(
                                      lightBodytextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  foregroundColor:
                                      MaterialStatePropertyAll(primaryGrey)),
                              child: const Text("Cancel")),
                        ),
                      ],
                    )
                  ],
                ),
              );
            });
}