// ignore_for_file: unnecessary_const

import 'package:eapp/presentation/resources/ColorManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

FontWeight based = FontWeight.bold;

class _RegisterState extends State<Register> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text(
          "Sign Up",
          style: TextStyle(color: ColorManager.KTextColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: ColorManager.KTextColor,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              "Register Account",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontWeight: based),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Complete your details or continue ",
                style:
                    TextStyle(color:  ColorManager.KTextColor, fontWeight: based)),
            const SizedBox(
              height: 5,
            ),
            Text("with your social media",
                style:
                    TextStyle(color: ColorManager.KTextColor, fontWeight: based)),
            const SizedBox(height: 33),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 70,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mail_outline),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: const BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle:  TextStyle(
                    color: ColorManager.KTextColor,
                  ),
                  hintText: "  Enter Your Email",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 70,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: IconButton(
                    onPressed: () {
                      print("pressed");
                    },
                    icon: const Icon(Icons.lock),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: const BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle:  TextStyle(
                    color:ColorManager.KTextColor,
                  ),
                  hintText: "  Enter Your Password",
                  fillColor: Colors.white),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 70,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.lock),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    borderSide: const BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintStyle:  TextStyle(
                    color: ColorManager.KTextColor,
                  ),
                  hintText: "  Enter Your Password",
                  fillColor: Colors.white),
            ),
            const SizedBox(height: 40),
            ButtonTheme(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF77546),
                  fixedSize: const Size(300, 55),
                  shape: const StadiumBorder(),
                ),
                child: const Text('Continue'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/profile");
                },
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/facebook-2.svg",
                ),
                const SizedBox(width: 30),
                SvgPicture.asset(
                  "assets/icons/google-icon.svg",
                ),
                // Icon(Icons.account_box_rounded,
                //     size: 30, color: Colors.green[800]),
                const SizedBox(width: 30),
                SvgPicture.asset(
                  "assets/icons/twitter.svg",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Text.rich( TextSpan(children: [
              TextSpan(
                text: "by continuing you confirm that you agree\n",
                style: TextStyle(
                  fontSize: 12,
                  color:ColorManager.KTextColor,
                ),
              ),
              TextSpan(
                  text: "          With our terms and conditions",
                  style: TextStyle(
                    fontSize: 12,
                    color:  ColorManager.KTextColor,
                  ))
            ])),

            //will change this to text button
          ],
        ),
      )),
    );
  }
}
