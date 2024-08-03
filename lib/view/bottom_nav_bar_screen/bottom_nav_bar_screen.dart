import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';

import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/addbutton_screen/addbutton_screen.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/library_screen/library_screen.dart';
import 'package:youtube/view/shorts_screen/shorts_screen.dart';
import 'package:youtube/view/subscription_screen/subscription_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedindex = 0;
  int value = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    ShortsScreen(),
    AddbuttonScreen(),
    SubscriptionScreen(),
    LibraryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 12,
        currentIndex: selectedindex,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(color: ColorConstants.mainred),
        unselectedLabelStyle: TextStyle(color: ColorConstants.mainred),
        items: [
          BottomNavigationBarItem(
              activeIcon: Image.asset(ImageConstants.home_black_logo),
              icon: Image.asset(ImageConstants.home_white_logo),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(ImageConstants.shorts_black_logo),
              icon: Image.asset(ImageConstants.shorts_white_logo),
              label: "Shorts"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 50,
              color: ColorConstants.mainblack.withOpacity(.8),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              activeIcon: Image.asset(ImageConstants.subscription_black_logo),
              icon: Image.asset(ImageConstants.subscription_white_logo),
              label: "Subscription"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(ImageConstants.library_black_logo),
              icon: Image.asset(ImageConstants.library_white_logo),
              label: "Library"),
        ],
        onTap: (value) {
          selectedindex = value;
          if (value == 2) {
            _buildBottomSheet(context);
          } else
            setState(() {
              selectedindex = value;
            });
        },
      ),
    );
  }

  Future<dynamic> _buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create",
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Icon(
                  Icons.close,
                  color: ColorConstants.mainblack,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: ColorConstants.lightgrey,
                  child: Image.asset(ImageConstants.shorts_white_logo),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Create a Short",
                  style:
                      TextStyle(color: ColorConstants.mainblack, fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorConstants.lightgrey,
                    child: Icon(Icons.upload)),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Upload a video",
                  style:
                      TextStyle(color: ColorConstants.mainblack, fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorConstants.lightgrey,
                    child: Image.asset(ImageConstants.live_icon)),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Go live",
                  style:
                      TextStyle(color: ColorConstants.mainblack, fontSize: 22),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
