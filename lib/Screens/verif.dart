import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../my_classes.dart';
import 'package:pinput/pinput.dart';

const ColorTxt = 0xFFBFBFBF;

class Verification extends StatefulWidget {
  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool checkedValue = false;
  bool _onEditing = true;
  final myth = PinTheme(
    width: 60,
    height: 60,
    textStyle: const TextStyle(
        fontSize: 20,
        color: const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(
          style: BorderStyle.solid, width: 2.3, color: const Color(ColorTxt)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "OTP Verification",
              style: TextStyle(color: Color(ColorTxt)),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(
              Icons.arrow_back_ios,
              color: Color(ColorTxt),
            ),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 28),
                  const Text("OTP Verification",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("write your code to + 898 860 ***",
                      style: const TextStyle(
                          color: const Color(ColorTxt),
                          fontSize: 17,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("the code will expire in",
                        style: TextStyle(
                            color: const Color(ColorTxt),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 4),
                    Text("00:30",
                        style: TextStyle(
                            color: Colors.red[300],
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ]),
                  const SizedBox(
                    height: 105,
                  ),
                  Center(
                    child: Pinput(
                      separator: const SizedBox(width: 21.6),
                      length: 4,
                      defaultPinTheme: myth,
                      onCompleted: (pin) => print(pin),
                      onSubmitted: (pin) => print(pin),
                    ),
                  ),
                  const SizedBox(height: 130),
                  ButtonTheme(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFF77546),
                        fixedSize: const Size(300, 55),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Continue'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/success");
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("Resend Otp Code",
                      style: const TextStyle(
                          color: const Color(ColorTxt),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold))
                ]),
          ))),
    );
  }
}
