import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube/utils/constants/animation_constants.dart';
import 'package:youtube/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBarScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AnimationConstants.youtubeanimation),
      ),
    );
  }
}
