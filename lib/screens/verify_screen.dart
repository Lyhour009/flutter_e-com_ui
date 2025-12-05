import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'package:flutter_ui/screens/forgotpsd_screen.dart';
import 'package:flutter_ui/screens/setpsd_screen.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key});
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ForgotPasswordScreen()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded, size: 26, color: Colors.deepPurple),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode_outlined, size: 26, color: Colors.deepPurple),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildText("Verification", Colors.deepPurpleAccent, 32, FontWeight.w700),
                _buildText("Enter the code to continue", Colors.black54, 17, FontWeight.w500),
              ],
            ),
            SizedBox(height: 18),
            Image.asset("assets/images/verify.png", fit: BoxFit.cover),
            SizedBox(height: 38),
            Center(child: _buildText("Enter the code sent to your email", Colors.black, 22, FontWeight.w700)),
            SizedBox(height: 18),
            TextFieldPin(
              textController: textEditingController,
              autoFocus: true,
              alignment: MainAxisAlignment.center,
              defaultBoxSize: 46.0,
              margin: 10,
              selectedBoxSize: 46.0,
              textStyle: TextStyle(fontSize: 16),
              onChange: (code) {},
            ),
            SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SetPassword()));
                },
                child: _buildText("Continue", Colors.white, 22, FontWeight.w600),
              ),
            ),
            SizedBox(height: 18),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildText("Didn't receive the code", Colors.black54, 16, FontWeight.w500),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SingupScreen()));
                    },
                    child: _buildText("Send again", Colors.deepPurpleAccent, 18, FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildText(String text, Color color, double size, FontWeight fontWeight, {TextAlign? alignment}) {
  return Text(
    textAlign: alignment ?? TextAlign.start,
    text,
    style: TextStyle(fontWeight: fontWeight, color: color, fontSize: size),
  );
}
