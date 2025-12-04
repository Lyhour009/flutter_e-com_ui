import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/welcome_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();
  final List<String> title = ["Welcome to E-Commerce App", "Easy Online Shopping", "Secure Payment Method"];
  final List<String> body = [
    "Our e-commerce app allows users to browse and purchase products online.",
    "Users can easily search and filter products by category, price, and brand.",
    "The app supports secure payment methods such as credit/debit cards and PayPal.",
  ];
  final List<String> image = ["assets/images/splash_1.png", "assets/images/splash2.png", "assets/images/splash3.png"];
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: List.generate(
        title.length,
        (index) => PageViewModel(title: title[index], body: body[index], image: Image.asset(image[index], width: 268), decoration: pageDecoration),
      ),
      showBackButton: true,
      showSkipButton: false,
      showDoneButton: true,
      back: _buildText("Back"),
      skip: _buildText("Skip"),
      done: _buildText("Done"),
      next: _buildText("Next"),
      onDone: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      },
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Colors.deepPurpleAccent,
        color: Colors.grey,
        spacing: EdgeInsets.symmetric(horizontal: 3),
      ),
    );
  }
}

Widget _buildText(String text) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.deepPurple, fontSize: 18),
  );
}
