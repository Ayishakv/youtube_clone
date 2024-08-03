import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/home_screen/widget/shorts_gridcard_widget.dart';
import 'package:youtube/view/home_screen/widget/video_card_widget.dart';
import 'package:youtube/view/view_screen/view_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  title: Text(
                    "Connect to a device",
                    style: TextStyle(
                        color: ColorConstants.mainblack,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(Icons.devices_sharp),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Link with TV code",
                              style: TextStyle(
                                  color: ColorConstants.mainblack,
                                  fontSize: 20))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Learn More",
                              style: TextStyle(
                                  color: ColorConstants.mainblack,
                                  fontSize: 20))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Image.asset(
              ImageConstants.deviceconnect,
            ),
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
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImageConstants.youtube_namedlogo),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.local_fire_department_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Shopping",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.movie_creation_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Films",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  ImageConstants.live_icon,
                  height: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Live",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.sports_esports_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Gaming",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.newspaper_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "News",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.emoji_events_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sport",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Courses",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.dry_cleaning_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Fashion & beauty",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.podcasts,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Podcast",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset(
                  ImageConstants.youtube_logo,
                  height: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "You Tube Premium",
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConstants.mainblack,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCategoriesSection(),
            InkWell(
              child: VideoCardWidget(
                thumbnail: ImageConstants.colorpencils,
                channel_img: ImageConstants.channel_profile_img1,
                description: "The Beauty of Existence - Heart Touching",
                viewcount: "8K Earth • 571 views • 2 year ago",
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewScreen(),
                    ));
              },
            ),
            shortsGridSection(),
            VideoCardWidget(
                thumbnail: ImageConstants.travel_destination,
                channel_img: ImageConstants.channel_profile_img2,
                description:
                    "17 Most Beautiful Countries to visit - Travel video",
                viewcount: "touropia • 3.6M views • 2 years ago "),
            SizedBox(
              height: 10,
            ),
            VideoCardWidget(
                thumbnail: ImageConstants.cake_image,
                channel_img: ImageConstants.channel_profile_img3,
                description: "Chocolate Brownie Cake - Baking video",
                viewcount: "cookbook • 3.6M views •  2 months ago "),
            SizedBox(
              height: 10,
            ),
            VideoCardWidget(
                thumbnail: ImageConstants.interior_img,
                channel_img: ImageConstants.channel_profile_img2,
                description:
                    "17 Most Beautiful Countries to visit - Travel video",
                viewcount: "touropia • 3.6M views • 2 years ago "),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Container(
      height: 60,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    width: 48,
                    height: 40,
                    decoration: BoxDecoration(
                        color: ColorConstants.lightgrey,
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.explore_outlined,
                      color: ColorConstants.mainblack,
                      size: 30,
                    ),
                  ),
                );
              }),
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
                      "Music",
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
                      "Jukebox",
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
                      "Sitcoms",
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
                      "Comedy",
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
                      "Movies",
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
                      "Fashion",
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
                      "New to you",
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
}

class shortsGridSection extends StatelessWidget {
  const shortsGridSection({
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
            child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 265),
                children: [
                  ShortsGridCardWidget(
                    image: ImageConstants.nature_image_2,
                    description:
                        "Beautiful Sunset #nature\n#trendingshorts #sunset",
                    viewcount: "571k views",
                  ),
                  ShortsGridCardWidget(
                      image: ImageConstants.rurallife_img,
                      description: "Rural Life #nature\n#trendingshorts #farm",
                      viewcount: "800K views"),
                  ShortsGridCardWidget(
                      image: ImageConstants.travel_img,
                      description:
                          "Beautiful Travel Destinations #travel\n#trendingshorts ",
                      viewcount: "3M views"),
                  ShortsGridCardWidget(
                      image: ImageConstants.photography_img,
                      description:
                          "Photography #videography\n#trendingshorts #editting",
                      viewcount: "678K views")
                ]),
          )
        ],
      ),
    );
  }
}
