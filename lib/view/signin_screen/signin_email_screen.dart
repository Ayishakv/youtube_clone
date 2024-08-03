import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';

import 'package:youtube/view/signin_screen/signin_pswd_screen.dart';

class SigninEmailScreen extends StatelessWidget {
  const SigninEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              ImageConstants.google_logo,
              height: 120,
            ),
          ),
          Center(
            child: Text(
              "Sign in",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Center(
            child: Text(
              "with your Google Account.",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Center(
            child: Text(
              "Learn more about using your account",
              style: TextStyle(
                  color: ColorConstants.mainblue,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formkey,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  label: Text("Email or phone"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: ColorConstants.mainblue),
                  ),
                ),
                validator: (value) {
                  if (value != null && value.contains("@")) {
                    return null;
                  } else if (value == int && value!.length < 11) {
                    return null;
                  } else {
                    return "Enter a valid email or phone number";
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Forgot email ?",
              style: TextStyle(
                  color: ColorConstants.mainblue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Create Account",
              style: TextStyle(
                  color: ColorConstants.mainblue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstants.mainblue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          "Next",
          style: TextStyle(color: ColorConstants.mainwhite),
        ),
        onPressed: () {
          if (formkey.currentState!.validate()) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SigninPswdScreen(),
                ));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Invalid Credentials")));
          }
        },
      ),
    );
  }
}
