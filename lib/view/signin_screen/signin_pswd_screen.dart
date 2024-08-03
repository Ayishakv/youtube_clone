import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';

import 'package:youtube/view/splash_screen/splash_screen.dart';

class SigninPswdScreen extends StatelessWidget {
  const SigninPswdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
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
                "Hi John",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: ColorConstants.maingrey.shade600)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text("J",
                          style: TextStyle(
                              color: ColorConstants.mainwhite, fontSize: 20)),
                      backgroundColor: ColorConstants.maingreen,
                    ),
                    Text("John123@gmail.com",
                        style: TextStyle(
                            color: ColorConstants.mainblack, fontSize: 16)),
                    Icon(
                      Icons.arrow_drop_down,
                      color: ColorConstants.mainblack,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: formkey,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    label: Text("Enter your password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    suffixIcon: Icon(Icons.key_rounded),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.mainblue))),
                validator: (value) {
                  if (value != null && value.length >= 6) {
                    return null;
                  } else {
                    return "incorrect password";
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Show password",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Forgot password?",
              style: TextStyle(
                  color: ColorConstants.mainblue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
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
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
              (route) => true,
            );
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Invalid Password")));
          }
        },
      ),
    );
  }
}
