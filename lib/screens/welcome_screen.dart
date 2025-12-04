import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/screens/login_screen.dart';
import 'package:flutter_ui/screens/singup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 18, right: 18, top: 68, bottom: 16),
        child: Column(
          spacing: 48,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildText("Welcome", Colors.deepPurpleAccent, 32, FontWeight.w700),
                    Icon(Icons.dark_mode_outlined, color: Colors.deepPurpleAccent, size: 28),
                  ],
                ),
                _buildText("Login or Sign up to continue", Colors.black54, 18, FontWeight.w500),
              ],
            ),
            SizedBox(child: Image.asset("assets/images/welcome.png", fit: BoxFit.cover)),
            Column(
              children: [
                _buildText("E-Commerce Shop", Colors.deepPurpleAccent, 30, FontWeight.bold),
                SizedBox(width: 320, child: _buildText("Your One Stop Shop for all your needs", Colors.black54, 20, FontWeight.w500, alignment: TextAlign.center)),
              ],
            ),
            Column(
              spacing: 16,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SingupScreen()));
                    },
                    child: _buildText("Create Account", Colors.white, 22, FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      side: BorderSide(color: Colors.deepPurpleAccent, width: 2),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: _buildText("Already have an account", Colors.deepPurpleAccent, 22, FontWeight.w600),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomeScreen()), (route) => false);
              },
              child: _buildText("Continue as a guest?", Colors.black54, 18, FontWeight.w400),
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
