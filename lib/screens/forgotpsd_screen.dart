import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/login_screen.dart';
import 'package:flutter_ui/screens/verify_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
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
                _buildText("Forgot password?", Colors.deepPurpleAccent, 32, FontWeight.w700),
                _buildText("No worry, we got your back", Colors.black54, 17, FontWeight.w500),
              ],
            ),
            SizedBox(height: 18),
            Image.asset("assets/images/forgot_psd.png", fit: BoxFit.cover),
            SizedBox(height: 28),

            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText("Email address", Colors.black54, 18, FontWeight.w500),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hint: Text("Enter email adress", style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ),
                ),
              ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (_) => VerifyScreen()));
                },
                child: _buildText("Send Code", Colors.white, 22, FontWeight.w600),
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
