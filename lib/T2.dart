import 'package:flutter/material.dart';

class AnimatedProfilePicture extends StatefulWidget {
  @override
  _AnimatedProfilePictureState createState() => _AnimatedProfilePictureState();
}

class _AnimatedProfilePictureState extends State<AnimatedProfilePicture>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 0.95, end: 1.05).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      ),
      child: Image.asset(
        "assets/profile.jpg",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
