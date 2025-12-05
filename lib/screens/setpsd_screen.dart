import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/forgotpsd_screen.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/screens/psdchange_screen.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildText("Set New Password", Colors.deepPurpleAccent, 32, FontWeight.w700),
                  _buildText("Create an unique password", Colors.black54, 17, FontWeight.w500),
                ],
              ),
              SizedBox(height: 18),
              Image.asset("assets/images/setnew.png", fit: BoxFit.cover),
              SizedBox(height: 18),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildText("New Password", Colors.black54, 18, FontWeight.w500),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hint: Text("Create new password", style: TextStyle(fontSize: 16, color: Colors.black54)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildText("Confirm Password", Colors.black54, 18, FontWeight.w500),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hint: Text("Re-enter password", style: TextStyle(fontSize: 16, color: Colors.black54)),
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
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ChangePasswordSuccess()));
                  },
                  child: _buildText("Reset password", Colors.white, 22, FontWeight.w600),
                ),
              ),
              SizedBox(height: 28),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: _buildText("Reset password later?", Colors.deepPurpleAccent, 18, FontWeight.w600),
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
