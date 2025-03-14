import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoloio_1/View/Screens/AboutMe.dart';
import 'package:portfoloio_1/View/Screens/Contact.dart';
import 'package:portfoloio_1/View/Screens/Projects.dart';
import 'package:portfoloio_1/View/Screens/Widgets/AnimatedCircle.dart';
import 'package:portfoloio_1/View/Screens/Widgets/CVButton.dart';
import 'package:portfoloio_1/View/Screens/Widgets/Widgets.dart';

import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  // Define GlobalKeys for each section
  final GlobalKey section1Key = GlobalKey();
  final GlobalKey section2Key = GlobalKey();
  final GlobalKey section3Key = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(seconds: 1), // used for Smooth scrolling effect
      curve: Curves.easeInOut, // used forSmooth transition
    );
  }

  List<Map<String, dynamic>> appBarList = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    appBarList = [
      {"title": "About Me", "key": section1Key},
      {"title": "Projects", "key": section2Key},
      {"title": "Contact", "key": section3Key},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        actions: [
          Texttype.Nametext("<Sreerag>", context, 30),
          700.widthBox,
          for (var item in appBarList)
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextButton(
                onPressed: () => scrollToSection(item["key"]),
                child: Text(
                  item['title'],
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height,
              width: double.infinity,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/5424482.JPG',
                      opacity: const AlwaysStoppedAnimation<double>(0.2),
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -100,
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(9, 251, 211, 1).withOpacity(0.5),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 500,
                          sigmaY: 500,
                        ),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: height * 0.3,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Texttype.text("Hi I am Sreerag", context, 30),
                              20.heightBox,
                              Row(
                                children: [
                                  AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        'Flutter Developer',
                                        textStyle: GoogleFonts.raleway(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                      TypewriterAnimatedText(
                                        'Mobile Application Developer',
                                        textStyle: GoogleFonts.raleway(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              20.heightBox,
                              Texttype.text(
                                "Crafting beautiful, seamless Flutter apps for 2 years turning ideas into smooth experiences.",
                                context,
                                16,
                              ),
                              40.heightBox,
                              Cvbutton(
                                onPressed: () {},
                                text: "DOWNLOAD CV",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ClipOval(child: AnimatedProfilePicture()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
                key: section1Key,
                height: 400,
                width: double.infinity,
                // color: Colors.red,
                alignment: Alignment.center,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/5424482.JPG',
                      opacity: const AlwaysStoppedAnimation<double>(0.2),
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -100,
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(9, 251, 211, 1).withOpacity(0.5),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 500,
                          sigmaY: 500,
                        ),
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/CAREER_re.png',
                          height: 400,
                          width: 250,
                          fit: BoxFit.fitHeight,
                        ),
                        // child: Image.asset(
                        //   'assets/CAREER.jpg',
                        //   opacity: const AlwaysStoppedAnimation<double>(0.2),
                        //   width: width,
                        //   height: height,
                        //   fit: BoxFit.cover,
                        //   alignment: Alignment.topCenter,
                        // ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Texttype.Paratext(
                          "I am a passionate Flutter developer with 2 years of experience crafting beautiful,high-performance mobile applications.I specialize in building smooth, responsive, and visually stunning apps that deliver seamless user experiences.Always eager to explore new technologies,I thrive on solving complex challenges and turning ideas into reality with clean, efficient code.",
                          context,
                          16,
                        ),
                      )
                    ],
                  ),
                ])),

            // Projects Section
            Container(
              key: section2Key,
              height: 400,
              width: double.infinity,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(
                "Projects Section",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),

            // Contact Section
            Container(
              key: section3Key,
              height: 400,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                "Contact Section",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
