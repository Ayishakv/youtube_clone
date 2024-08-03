import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';

class VideoListtile extends StatelessWidget {
  const VideoListtile(
      {super.key,
      required this.thumbnail,
      required this.time,
      required this.description,
      required this.channelName,
      required this.viewscount});

  final String thumbnail;
  final String time;
  final String description;
  final String channelName;
  final String viewscount;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            height: 90,
            width: 152,
            child: Image.network(
              thumbnail,
              fit: BoxFit.cover,
            ),
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         fit: BoxFit.cover, image: NetworkImage(thumbnail))),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              height: 11,
              width: 24,
              decoration: BoxDecoration(
                  color: ColorConstants.mainblack.withOpacity(.40),
                  borderRadius: BorderRadius.circular(2)),
              child: Center(
                child: Text(
                  time,
                  style:
                      TextStyle(color: ColorConstants.mainwhite, fontSize: 8),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 4,
                width: 152,
                color: ColorConstants.mainred,
              ))
        ],
      ),
      title: Text(
        description,
        style: TextStyle(
            color: ColorConstants.mainblack,
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            channelName,
            style: TextStyle(color: ColorConstants.maingrey, fontSize: 12),
          ),
          Text(
            viewscount,
            style: TextStyle(color: ColorConstants.maingrey, fontSize: 12),
          ),
        ],
      ),
      trailing: Icon(
        Icons.more_vert,
        color: ColorConstants.mainblack,
      ),
    );
  }
}
