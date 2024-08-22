import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Day11 extends StatelessWidget {
  const Day11({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
        fontSize: 50.0, fontFamily: 'Horizon', fontWeight: FontWeight.w700);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: false,
        elevation: 1,
        title: const Text(
          "Day-11    Animated Text",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 300,
              height: 100,
              color: Colors.brown,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'do IT!',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                      duration: const Duration(milliseconds: 600),
                    ),
                    FadeAnimatedText('do it RIGHT!!',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                        duration: const Duration(milliseconds: 600)),
                    FadeAnimatedText('do it RIGHT NOW!!!',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                        duration: const Duration(milliseconds: 600)),
                  ],
                  totalRepeatCount: 500,
                  displayFullTextOnTap: true,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 300,
              height: 100,
              color: const Color.fromARGB(222, 255, 154, 1),
              child: Row(
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'Be',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(width: 20),
                  AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('AWESOME',
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                          duration: const Duration(milliseconds: 600)),
                      RotateAnimatedText('OPTIMISTIC',
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                          duration: const Duration(milliseconds: 600)),
                      RotateAnimatedText('DIFFERENT',
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                          duration: const Duration(milliseconds: 600)),
                    ],
                    totalRepeatCount: 500,
                    displayFullTextOnTap: true,
                    pause: const Duration(milliseconds: 200),
                    stopPauseOnTap: true,
                    isRepeatingAnimation: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 300,
              height: 100,
              color: Colors.black,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello World',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                        speed: const Duration(milliseconds: 600)),
                    WavyAnimatedText('Look at the waves',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                        speed: const Duration(milliseconds: 600)),
                  ],
                  totalRepeatCount: 500,
                  displayFullTextOnTap: true,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 300,
              height: 100,
              color: Colors.grey,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Bill Gates',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  totalRepeatCount: 500,
                  displayFullTextOnTap: true,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 300,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText(
                      'Think',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    ScaleAnimatedText(
                      'Build',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    ScaleAnimatedText('Ship',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                        duration: const Duration(milliseconds: 600)),
                  ],
                  totalRepeatCount: 500,
                  displayFullTextOnTap: true,
                  pause: const Duration(milliseconds: 200),
                  stopPauseOnTap: true,
                  isRepeatingAnimation: true,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
