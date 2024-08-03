import 'package:flutter/material.dart';
import 'package:youtube/dummydb.dart';
import 'package:youtube/utils/constants/color_constants.dart';

import 'package:youtube/view/shorts_screen/widgets/shorts_card.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorConstants.mainblack,
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: Text(
            "Shorts",
            style: TextStyle(
                color: ColorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 35,
            color: ColorConstants.mainwhite,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.camera_alt_outlined,
            size: 35,
            color: ColorConstants.mainwhite,
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: Icon(
              Icons.more_vert,
              size: 35,
              color: ColorConstants.mainwhite,
            ),
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                context: context,
                builder: (context) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.format_align_left),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark_border),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Save to playlist",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.subtitles),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Captions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.block),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Not interested",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.cancel_outlined),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Don't recommend this channel",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.flag_outlined),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Report",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.feedback_outlined),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Send feedback",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: Dummydb.shortslist.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ShortsCard(
            videourl: Dummydb.shortslist[index]["videourl"].toString(),
            channel_profile_image:
                Dummydb.shortslist[index]["channel_profile_image"].toString(),
            channel_id: Dummydb.shortslist[index]["channel_id"].toString(),
            description: Dummydb.shortslist[index]["description"].toString(),
            songdetails: Dummydb.shortslist[index]["songdetails"].toString()),
      ),
    );
  }
}
