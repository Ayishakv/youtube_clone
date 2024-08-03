import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';

class ShortsCard extends StatelessWidget {
  const ShortsCard(
      {super.key,
      required this.videourl,
      required this.channel_profile_image,
      required this.channel_id,
      required this.description,
      required this.songdetails});
  final String videourl;
  final String channel_profile_image;
  final String channel_id;
  final String description;
  final String songdetails;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          height: double.infinity,
          videourl,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 130,
            left: 16,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(channel_profile_image),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  channel_id,
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      color: ColorConstants.mainwhite,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )),
        Positioned(
            bottom: 65,
            left: 16,
            child: Text(
              description,
              style: TextStyle(color: ColorConstants.mainwhite, fontSize: 18),
            )),
        Positioned(
            left: 16,
            bottom: 25,
            child: Row(
              children: [
                Icon(
                  Icons.music_note_outlined,
                  color: ColorConstants.mainwhite,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  songdetails,
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 16),
                )
              ],
            )),
        Positioned(
            bottom: 20,
            right: 16,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  height: 50,
                  width: 50,
                  channel_profile_image,
                  fit: BoxFit.cover,
                ))),
        Positioned(
            right: 18,
            bottom: 90,
            child: Column(
              children: [
                Icon(
                  Icons.sync,
                  color: ColorConstants.mainwhite,
                  size: 35,
                ),
                Text(
                  "364",
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
                )
              ],
            )),
        Positioned(
            right: 18,
            bottom: 160,
            child: Column(
              children: [
                Image.asset(
                  ImageConstants.share_white_icon,
                  height: 25,
                  color: ColorConstants.mainwhite,
                ),
                Text(
                  "Share",
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
                )
              ],
            )),
        Positioned(
            right: 18,
            bottom: 210,
            child: Column(
              children: [
                Icon(
                  Icons.comment,
                  color: ColorConstants.mainwhite,
                  size: 30,
                ),
                Text(
                  "3,644",
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
                )
              ],
            )),
        Positioned(
            right: 18,
            bottom: 270,
            child: Column(
              children: [
                Icon(
                  Icons.thumb_down,
                  color: ColorConstants.mainwhite,
                  size: 25,
                ),
                Text(
                  "Dislike",
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
                )
              ],
            )),
        Positioned(
            right: 18,
            bottom: 330,
            child: Column(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: ColorConstants.mainwhite,
                  size: 25,
                ),
                Text(
                  "3.6M",
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
                )
              ],
            )),
      ],
    );
  }
}
