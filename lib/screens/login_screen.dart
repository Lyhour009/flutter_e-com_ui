import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/screens/singup_screen.dart';
import 'package:flutter_ui/screens/welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final List<String> listImages = ["assets/images/google.png", "assets/images/apple.png", "assets/images/facebook.png"];
  final List<String> listText = ["Continue with Google", "Continue with Apple", "Continue with Facebook"];

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildText("Login Account", Colors.deepPurpleAccent, 32, FontWeight.w700),
                    _buildText("Welcome back", Colors.black54, 18, FontWeight.w500),
                  ],
                ),
              ),
              SizedBox(height: 38),
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
              SizedBox(height: 18),
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {}, child: _buildText("Forget password?", Colors.deepPurpleAccent, 16, FontWeight.w700)),
              ),
              SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomeScreen()), (route) => false);
                  },
                  child: _buildText("Login", Colors.white, 22, FontWeight.w600),
                ),
              ),
              SizedBox(height: 28),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(" or login with ", style: TextStyle(color: Colors.black54, fontSize: 16)),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(height: 28),
              SizedBox(
                child: Column(
                  spacing: 8,
                  children: List.generate(listImages.length, (index) {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 16,
                        children: [Image.asset(listImages[index], width: 32, height: 32), _buildText(listText[index], Colors.black, 17, FontWeight.w600)],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 28),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildText("Don't have an account?", Colors.black54, 16, FontWeight.w500),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SingupScreen()));
                      },
                      child: _buildText("Sign up", Colors.deepPurpleAccent, 18, FontWeight.w700),
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
