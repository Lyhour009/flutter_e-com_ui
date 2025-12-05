import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/login_screen.dart';
import 'package:flutter_ui/screens/navigation_screen.dart';
import 'package:flutter_ui/screens/welcome_screen.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({super.key});

  final List<String> listImages = ["assets/images/google.png", "assets/images/apple.png", "assets/images/facebook.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 26),
          color: Colors.deepPurple,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode_outlined, size: 26), color: Colors.deepPurple)],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          // color: Colors.blue,
          child: Column(
            spacing: 28,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildText("Create Account", Colors.deepPurpleAccent, 32, FontWeight.w700),
                    _buildText("Sign up to continue", Colors.black54, 18, FontWeight.w500),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
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
              ),
              SizedBox(
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildText("Password", Colors.black54, 18, FontWeight.w500),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hint: Text("Create password", style: TextStyle(fontSize: 16, color: Colors.black54)),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildText("Confirm password", Colors.black54, 18, FontWeight.w500),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        hint: Text("Re-enter password", style: TextStyle(fontSize: 16, color: Colors.black54)),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ],
                ),
              ),
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
                  child: _buildText("Sign up", Colors.white, 22, FontWeight.w600),
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(" or sign up with ", style: TextStyle(color: Colors.black54, fontSize: 16)),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  spacing: 8,
                  children: List.generate(listImages.length, (index) {
                    return Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black12),
                          child: Image.asset(listImages[index], width: 40, height: 40),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildText("Already have an account?", Colors.black54, 16, FontWeight.w500),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: _buildText("Login", Colors.deepPurpleAccent, 18, FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
