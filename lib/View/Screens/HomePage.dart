import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:portfoloio_1/View/Screens/Widgets/AnimatedCircle.dart';
import 'package:portfoloio_1/View/Screens/Widgets/CVButton.dart';
import 'package:portfoloio_1/View/Screens/Widgets/Projectcard.dart';
import 'package:portfoloio_1/View/Screens/Widgets/Widgets.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:animate_do/animate_do.dart';

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
                    child: SlideInUp(
                        animate: true,
                        duration: Duration(seconds: 1),
                        child: TextandProfile(context)),
                  ),
                ],
              ),
            ),

            Container(
                key: section1Key,
                height: 650,
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
                  Column(
                    children: [
                      90.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          60.heightBox,
                          Lottie.asset(
                            height: 400,
                            width: 400,
                            fit: BoxFit.contain,
                            'About.json',
                            repeat: true,
                            reverse: true,
                            animate: true,
                          ),
                          40.widthBox,
                          Flexible(
                            child: Texttype.Paratext(
                              "I am a passionate Flutter developer with over 2 years of experience crafting beautiful, high-performance mobile applications. I specialize in building smooth, responsive, and visually stunning apps that deliver seamless user experiences. My focus is always on clean architecture, modular code, and efficient state management.\n\nFrom idea to deployment, I enjoy owning the full app development lifecycle — designing intuitive UIs, integrating REST APIs or Firebase services, and optimizing for performance and scalability. I’m always eager to explore new technologies and tools that enhance my development workflow, including Bloc, GetX, Provider, and custom animations. \n\n Let’s build something great together... 🚀",
                              context,
                              16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     150.heightBox,
                  //     Row(
                  //       spacing: 30,
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         skillCard('assets/Dart.png', "Dart"),
                  //         skillCard('assets/fltr.png', "Flutter"),
                  //         skillCard('assets/nodejs1.png', "Node.js"),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ])),

            Container(
                key: section2Key,
                height: 650,
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
                          color:
                              Color.fromRGBO(9, 251, 211, 1).withOpacity(0.5),
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
                        top: height * 0.06,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                ProjectCard(
                                  title: "PDA application",
                                  description:
                                      "A modern Warehouse PDA app for Inbound and OutBound Activities ",
                                  imagePath: "assets/PDA1.jpeg",
                                  onTap: () {},
                                ),
                                ProjectCard(
                                  title: "TPM WEB MODULE",
                                  description:
                                      "Enabled users to save and manage customer enquiries effectively as the starting point of the billing process",
                                  imagePath: 'assets/defaultimage.webp',
                                  onTap: () {},
                                ),
                                ProjectCard(
                                  title: "Flat Track",
                                  description:
                                      "Flat Track is a mobile application designed for apartment residents to manage daily flat activities such as maintenance requests",
                                  imagePath: 'assets/Flattrack.jpeg',
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                )),

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

  Row TextandProfile(BuildContext context) {
    return Row(
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
    );
  }
}
