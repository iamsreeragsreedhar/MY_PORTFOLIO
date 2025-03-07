import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfoloio_1/Pages/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text("Hi iam Sreerag  ", context, 30),
                10.heightBox,
                AnimatedTextKit(
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    TypewriterAnimatedText('Flutter Developer',
                        textStyle: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 35,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        )),
                    TypewriterAnimatedText('Mobile Application Developer',
                        textStyle: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                  onTap: () {
                    debugPrint("Do something");
                  },
                ),
                20.heightBox,
                text(
                    "Crafting beautiful, seamless Flutter apps for 2 years turning ideas into smooth experiences.",
                    context,
                    16)
              ],
            ),
            10.widthBox,
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pht.png',
                  height: 900,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
