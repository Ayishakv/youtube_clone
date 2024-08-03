import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';

import 'package:youtube/view/home_screen/widget/video_card_widget.dart';
import 'package:youtube/view/subscription_screen/subscription_screen.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  child: Image.asset(
                    ImageConstants.colorpencils,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 4,
                      width: double.infinity,
                      color: ColorConstants.mainred,
                    ))
              ],
            ),
            _buildVideoViewContentSection(),
            SizedBox(
              height: 10,
            ),
            VideoCardWidget(
                thumbnail: ImageConstants.cosmetics_img,
                channel_img: ImageConstants.interior_img,
                description:
                    "DIY Toys | Satisfying And Relaxing | SADEK Tuts Tiktok Compition | Fidget Trading#SADEK #Shorts tiktok",
                viewcount: "234K views"),
            shortsCardList(),
            VideoCardWidget(
                thumbnail: ImageConstants.thumbnailimg1,
                channel_img: ImageConstants.interior_img,
                description:
                    "DIY Toys | Satisfying And Relaxing | SADEK Tuts Tiktok Compition | Fidget Trading#SADEK #Shorts tiktok",
                viewcount: "234K views"),
            VideoCardWidget(
                thumbnail: ImageConstants.nature_image_2,
                channel_img: ImageConstants.interior_img,
                description:
                    "DIY Toys | Satisfying And Relaxing | SADEK Tuts Tiktok Compition | Fidget Trading#SADEK #Shorts tiktok",
                viewcount: "234K views"),
            VideoCardWidget(
                thumbnail: ImageConstants.travel_destination,
                channel_img: ImageConstants.interior_img,
                description:
                    "DIY Toys | Satisfying And Relaxing | SADEK Tuts Tiktok Compition | Fidget Trading#SADEK #Shorts tiktok",
                viewcount: "234K views")
          ],
        ),
      ),
    );
  }

  Widget _buildVideoViewContentSection() {
    return Container(
      height: 328,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Learn colors with Wonderville Friends |PinkFong & Hogi |Colors for kids",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "150M views • 4 yr ago",
              style: TextStyle(
                  color: ColorConstants.maingrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 24,
                  ),
                  Text(
                    "25.6K",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.thumb_down_alt_outlined,
                    size: 24,
                  ),
                  Text(
                    "65",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    ImageConstants.share_black_icon,
                    height: 24,
                  ),
                  Text(
                    "share",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.download_rounded,
                    size: 24,
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.playlist_add,
                    size: 24,
                  ),
                  Text(
                    "Save",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: ColorConstants.maingrey,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.channel_profile_img3),
            ),
            title: Text(
              "Hogi Pinkfong",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("289K subscibe",
                style: TextStyle(
                  color: ColorConstants.maingrey,
                  fontSize: 12,
                )),
            trailing: Text("SUBSCRIBE",
                style: TextStyle(
                    color: ColorConstants.mainred,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
          Divider(
            thickness: 1,
            color: ColorConstants.maingrey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text("Comments",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    )),
                Text("1",
                    style: TextStyle(
                      color: ColorConstants.maingrey,
                      fontSize: 12,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: ColorConstants.maingreen,
                  child: Text("a",
                      style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 12,
                      )),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                    "DIY Toys | Satisfying And Relaxing | SADEK Tuts\nTiktok Compition | Fidget Trading#SADEK #Shorts tiktok",
                    style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 12,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
