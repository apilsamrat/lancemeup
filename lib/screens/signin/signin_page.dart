import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lancemeup/styles/buttonstyle.dart';
import 'package:lancemeup/styles/fontstyle.dart';
import 'package:lancemeup/utils/colors.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool obsurePass = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
        titleTextStyle: GoogleFonts.urbanist(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!", style: headingStyle),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 24),
                  child: Text("Login to your account", style: bodytextStyle),
                ),
                Text(
                  "Email",
                  style: primaryTextStyle,
                ),
                const SizedBox(height: 4),
                TextFormField(
                  style: primaryTextStyle,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(),
                      hintText: "janecopper@gmail.com"),
                ),
                const SizedBox(height: 24),
                Text(
                  "Password",
                  style: primaryTextStyle,
                ),
                const SizedBox(height: 4),
                TextFormField(
                  style: primaryTextStyle,
                  obscureText: obsurePass,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(12),
                      border: const OutlineInputBorder(),
                      hintText: "***************",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obsurePass = !obsurePass;
                            });
                          },
                          icon: Icon(obsurePass
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined))),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Flexible(
                      child: CheckboxListTile(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = !rememberMe;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Remember me",
                          style: primaryTextStyle.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: primaryTransparentButtonStyle,
                        child: const Text("Forgot Password?")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 48,
            width: 358,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
              style: primaryButtonStyle,
              child: const Text("Login"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 36, 0, 44),
            child: TextButton(
              onPressed: () {},
              style: primaryTransparentButtonStyle,
              child: const Text("Don’t have an account? Sign up"),
            ),
          ),
        ]),
      ),
    );
  }
}
