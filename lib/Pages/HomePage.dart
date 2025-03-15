import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoloio_1/Pages/constants.dart';
import 'package:portfoloio_1/View/Screens/Widgets/Widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  String email = 'iamsreeragsreedhar@gmail.com';

  Future<void> _openEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'body': 'I would like to connect with you.'},
    );

    if (!await launchUrl(emailUri)) {
      throw Exception('Could not launch $emailUri');
    }
  }

  Future<void> _launchInBrowserLinkedIn(url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.white),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texttype.text("Hi iam Sreerag  ", context, 30),
                    10.heightBox,
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Flutter Developer',
                            textStyle: GoogleFonts.raleway(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 35,
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.normal,
                            )),
                        TypewriterAnimatedText('Mobile Application Developer',
                            textStyle: GoogleFonts.raleway(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
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
                     Texttype.text(
                        "Crafting beautiful, seamless Flutter apps for 2 years turning ideas into smooth experiences.",
                        context,
                        16),
                    20.heightBox,
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withAlpha(20)),
                        ),
                        20.widthBox,
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 60, 90, 114)
                                  .withAlpha(40)),
                        ),
                        20.widthBox,
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 115, 142, 165)
                                  .withAlpha(40)),
                        ),
                        20.widthBox,
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 27, 135, 224)
                                  .withAlpha(40)),
                        )
                      ],
                    ),
                    20.heightBox,
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 50.0,
                      children: [
                        IconButton(
                            onPressed: () async {
                              await _openEmail();
                            },
                            icon: FaIcon(FontAwesomeIcons.envelope)),
                        IconButton(
                            onPressed: () async {
                              await _launchInBrowserLinkedIn(Linkedinurl);
                            },
                            icon: FaIcon(FontAwesomeIcons.linkedin)),
                        IconButton(
                            onPressed: () async {
                              await _launchInBrowserLinkedIn(Githuburl);
                            },
                            icon: FaIcon(FontAwesomeIcons.github))
                      ],
                    )
                  ],
                ),
              ),
              10.widthBox,
              // Container(
              //   alignment: Alignment.center,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20),
              //     child: Image.asset(
              //       'assets/pht.png',
              //       height: 700,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),

              Container(
                alignment: Alignment.center,
                child: ClipOval(
                  child: Image.asset(
                    'assets/pht.png',
                    height: 400,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
