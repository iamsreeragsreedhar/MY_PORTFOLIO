import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class PortfolioHeader extends StatelessWidget {
  final double height;
  final double width;

  const PortfolioHeader({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      alignment: Alignment.center,
      child: Stack(
        children: [
          /// Background Image with Opacity
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/5424482.JPG',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),

          /// Blurred Glow Circle
          Positioned(
            bottom: -80,
            right: -100,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.cyanAccent.withOpacity(0.2),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),

          /// Foreground Content
          Positioned(
            left: 40,
            top: height * 0.25,
            right: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Left Text Content
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, I’m Sreerag",
                        style: GoogleFonts.raleway(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),

                      /// Animated Text
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Flutter Developer',
                            textStyle: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.w300,
                            ),
                            speed: Duration(milliseconds: 80),
                          ),
                          TypewriterAnimatedText(
                            'Mobile Application Developer',
                            textStyle: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.w300,
                            ),
                            speed: Duration(milliseconds: 80),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Text(
                        "Crafting beautiful, seamless Flutter apps for 2 years — turning ideas into smooth experiences.",
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 40),

                      /// Download Button
                      ElevatedButton(
                        onPressed: () {
                          // Add download CV logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.tealAccent[700],
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                        child: Text("Download CV"),
                      ),
                    ],
                  ),
                ),

                /// Right Profile Picture
                SizedBox(width: 20),
                ClipOval(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.tealAccent,
                        width: 3,
                      ),
                    ),
                    child: Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
