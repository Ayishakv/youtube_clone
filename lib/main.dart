import 'package:flutter/material.dart';

import 'package:youtube/view/signin_screen/signin_email_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninEmailScreen(),
    );
  }
}
