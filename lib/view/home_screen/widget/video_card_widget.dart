import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget(
      {super.key,
      required this.thumbnail,
      required this.channel_img,
      required this.description,
      required this.viewcount});
  final String thumbnail;
  final String channel_img;
  final String description;
  final String viewcount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 215,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.lightgrey,
                  image: DecorationImage(
                      image: AssetImage(
                        thumbnail,
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 5,
                  width: 450,
                  color: ColorConstants.mainred,
                )),
            Positioned(
                bottom: 10,
                right: 6,
                child: Container(
                  height: 22,
                  width: 38,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainblack.withOpacity(.64),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text(
                      "0:50",
                      style: TextStyle(
                          color: ColorConstants.mainwhite, fontSize: 16),
                    ),
                  ),
                )),
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(channel_img),
          ),
          title: Text(
            description,
            style: TextStyle(
                color: ColorConstants.mainblack,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          subtitle: Text(
            viewcount,
            style: TextStyle(color: ColorConstants.mainblack, fontSize: 12),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
