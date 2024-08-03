import 'package:flutter/material.dart';
import 'package:youtube/dummydb.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/history_screen/video_listtile.dart';
import 'package:youtube/view/subscription_screen/subscription_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainwhite,
        toolbarHeight: 70,
        // leadingWidth: 150,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "History",
          style: TextStyle(
              color: ColorConstants.mainblack,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        titleSpacing: 2,
        actions: [
          Image.asset(
            ImageConstants.deviceconnect,
          ),
          SizedBox(
            width: 13,
          ),
          Image.asset(ImageConstants.notification_logo_white),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.search,
            size: 28,
          ),
          SizedBox(
            width: 13,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(ImageConstants.profile_picture),
          ),
          SizedBox(
            width: 13,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: ElevatedButton(
                  style: ButtonStyle(
                      side: WidgetStatePropertyAll(
                          BorderSide(color: ColorConstants.lightgrey)),
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstants.lightgrey)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: ColorConstants.maingrey,
                          size: 24,
                        ),
                        Text(
                          "search watch history",
                          style: TextStyle(
                              color: ColorConstants.maingrey, fontSize: 16),
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Today",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstants.mainblack.withOpacity(.7),
                    fontWeight: FontWeight.bold),
              ),
            ),
            shortsCardList(),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => VideoListtile(
                    thumbnail: Dummydb.videoTile[index]["thumbnail"].toString(),
                    time: Dummydb.videoTile[index]["time"].toString(),
                    description:
                        Dummydb.videoTile[index]["description"].toString(),
                    channelName:
                        Dummydb.videoTile[index]["channelName"].toString(),
                    viewscount:
                        Dummydb.videoTile[index]["viewscount"].toString()),
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: Dummydb.videoTile.length)
          ],
        ),
      ),
    );
  }
}
