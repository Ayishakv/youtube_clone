import 'package:flutter/material.dart';
import 'package:youtube/dummydb.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/history_screen/video_listtile.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainwhite,
        toolbarHeight: 70,
        // leadingWidth: 150,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Downloads",
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
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => VideoListtile(
                    thumbnail: Dummydb.dwnldVideoListTile[index]["thumbnail"]
                        .toString(),
                    time: Dummydb.dwnldVideoListTile[index]["time"].toString(),
                    description: Dummydb.dwnldVideoListTile[index]
                            ["description"]
                        .toString(),
                    channelName: Dummydb.dwnldVideoListTile[index]
                            ["channelName"]
                        .toString(),
                    viewscount: Dummydb.dwnldVideoListTile[index]["viewscount"]
                        .toString()),
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: Dummydb.dwnldVideoListTile.length)
          ],
        ),
      ),
    );
  }
}
