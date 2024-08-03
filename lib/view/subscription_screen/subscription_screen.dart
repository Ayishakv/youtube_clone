import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/home_screen/widget/shorts_gridcard_widget.dart';
import 'package:youtube/view/home_screen/widget/video_card_widget.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainwhite,
        toolbarHeight: 70,
        leadingWidth: 150,
        leading: Image.asset(
          ImageConstants.youtube_namedlogo,
        ),
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
            _buildSubscribedChannelsSection(),
            _builtCategorySection(),
            VideoCardWidget(
              thumbnail: ImageConstants.channel_profile_img1,
              channel_img: ImageConstants.nature_image_1,
              description: "The Beauty of Existence - Heart Touching",
              viewcount: "8K Earth • 571 views • 2 year ago",
            ),
            shortsCardList(),
            VideoCardWidget(
              thumbnail: ImageConstants.interior_img,
              channel_img: ImageConstants.interior_img,
              description: " Latest interior design 2024 - Interiors",
              viewcount: "Landspace • 571 views • 2 year ago",
            ),
            SizedBox(
              height: 10,
            ),
            VideoCardWidget(
              thumbnail: ImageConstants.cosmetics_img,
              channel_img: ImageConstants.cosmetics_img,
              description:
                  "New VENUS collection|just launched - VENUS Cosmetics",
              viewcount: "Beauty vlog • 571 views • 2 months ago",
            ),
          ],
        ),
      ),
    );
  }

  Widget _builtCategorySection() {
    return Container(
      height: 60,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Today",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Videos",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Shorts",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Live",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Posts",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Continue watching",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              SizedBox(
                width: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Text(
                      "Unwatched",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubscribedChannelsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.lightgrey,
                        radius: 30,
                        backgroundImage: NetworkImage(
                          ImageConstants.subscribed_profile_img1,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.mainwhite,
                            radius: 9,
                            child: CircleAvatar(
                              backgroundColor: ColorConstants.mainblue,
                              radius: 7,
                            ),
                          ))
                    ],
                  ),
                  Text("Aleesha")
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.lightgrey,
                        radius: 30,
                        backgroundImage: NetworkImage(
                          ImageConstants.subscribed_profile_img2,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.mainwhite,
                            radius: 9,
                            child: CircleAvatar(
                              backgroundColor: ColorConstants.mainblue,
                              radius: 7,
                            ),
                          ))
                    ],
                  ),
                  Text("Amana")
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.lightgrey,
                        radius: 30,
                        backgroundImage: NetworkImage(
                          ImageConstants.subscribed_profile_img3,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.mainwhite,
                            radius: 9,
                            child: CircleAvatar(
                              backgroundColor: ColorConstants.mainblue,
                              radius: 7,
                            ),
                          ))
                    ],
                  ),
                  Text("john")
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.lightgrey,
                        radius: 30,
                        backgroundImage: NetworkImage(
                          ImageConstants.subscribed_profile_img4,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.mainwhite,
                            radius: 9,
                            child: CircleAvatar(
                              backgroundColor: ColorConstants.mainblue,
                              radius: 7,
                            ),
                          ))
                    ],
                  ),
                  Text("Loris")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  "All",
                  style: TextStyle(
                      color: ColorConstants.mainblue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class shortsCardList extends StatelessWidget {
  const shortsCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                child: Image.asset(
                  ImageConstants.shorts_red_logo,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Shorts",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShortsGridCardWidget(
                        image: ImageConstants.rurallife_img,
                        description:
                            "Rural Life #nature\n#trendingshorts #farm",
                        viewcount: "800K views"),
                    SizedBox(
                      width: 10,
                    ),
                    ShortsGridCardWidget(
                        image: ImageConstants.colorpencils,
                        description:
                            "Rural Life #nature\n#trendingshorts #farm",
                        viewcount: "800K views"),
                    SizedBox(
                      width: 10,
                    ),
                    ShortsGridCardWidget(
                        image: ImageConstants.cosmetics_img,
                        description:
                            "Rural Life #nature\n#trendingshorts #farm",
                        viewcount: "800K views"),
                    SizedBox(
                      width: 10,
                    ),
                    ShortsGridCardWidget(
                        image: ImageConstants.travel_img,
                        description:
                            "Rural Life #nature\n#trendingshorts #farm",
                        viewcount: "800K views"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
