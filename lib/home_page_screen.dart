import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        child: Center(
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FadeAnimatedText('THE HARDER!!',
                  duration: Duration(seconds: 3),
                  fadeOutBegin: 0.9,
                  fadeInEnd: 0.7),
              FadeAnimatedText('YOU WORK!!',
                  duration: Duration(seconds: 3),
                  fadeOutBegin: 0.9,
                  fadeInEnd: 0.7),
              FadeAnimatedText('THE LUCKIER!!!',
                  duration: Duration(seconds: 3),
                  fadeOutBegin: 0.9,
                  fadeInEnd: 0.7),
              FadeAnimatedText('YOU GET!!!!',
                  duration: Duration(seconds: 3),
                  fadeOutBegin: 0.9,
                  fadeInEnd: 0.7),
            ],
          ),
        ),
      ),
    );
  }
}
