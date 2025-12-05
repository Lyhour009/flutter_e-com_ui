import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/navigation_screen.dart';

class ChangePasswordSuccess extends StatelessWidget {
  const ChangePasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
                _buildText("Password Changed", Colors.deepPurpleAccent, 32, FontWeight.w700),
                _buildText("No hassle any more", Colors.black54, 17, FontWeight.w500),
              ],
            ),
            SizedBox(height: 18),
            Image.asset("assets/images/success.png", fit: BoxFit.cover),
            SizedBox(height: 18),
            Column(
              spacing: 8,
              children: [
                Center(child: _buildText("Your passsword has been changed", Colors.black54, 18, FontWeight.w500)),
                _buildText("Successfully !", Colors.black, 22, FontWeight.bold),
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
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => NavigationScreen()), (route) => false);
                },
                child: _buildText("Continue", Colors.white, 22, FontWeight.w600),
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
