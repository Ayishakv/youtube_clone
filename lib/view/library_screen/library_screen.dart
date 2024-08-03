import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';
import 'package:youtube/utils/constants/image_constants.dart';
import 'package:youtube/view/downloads_screen/downloads_screen.dart';
import 'package:youtube/view/history_screen/history_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

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
      body: Column(
        children: [
          _buildRecentsScrollSection(),
          Divider(
            color: ColorConstants.maingrey,
            thickness: 1,
          ),
          categoriesSection(),
          Divider(
            color: ColorConstants.maingrey,
            thickness: 1,
          ),
          _buildPlaylistSection()
        ],
      ),
    );
  }

  Widget _buildPlaylistSection() {
    return Container(
      height: 186,
      width: 359,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Playlists",
            style: TextStyle(
                fontSize: 19,
                color: ColorConstants.mainblack,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.add,
                color: ColorConstants.mainblue,
                size: 24,
              ),
              Text(
                " New Playlist",
                style: TextStyle(
                  fontSize: 17,
                  color: ColorConstants.mainblue,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 36,
                width: 36,
                child: Image.asset(
                  ImageConstants.cake_image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("Liked videos",
                      style: TextStyle(
                          fontSize: 17,
                          color: ColorConstants.mainblack,
                          fontWeight: FontWeight.bold)),
                  Text("50 videos",
                      style: TextStyle(
                        fontSize: 13,
                        color: ColorConstants.maingrey,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildRecentsScrollSection() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recents",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            fit: BoxFit.cover,
                            ImageConstants.cake_image,
                            height: 88,
                            width: 148,
                          ),
                          Positioned(
                              bottom: 10,
                              right: 6,
                              child: Container(
                                height: 14,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: ColorConstants.mainblack
                                        .withOpacity(.64),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "0:50",
                                    style: TextStyle(
                                        color: ColorConstants.mainwhite,
                                        fontSize: 10),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 4,
                                width: 148,
                                color: ColorConstants.mainred,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Chocolate brownie\ncake",
                            style: TextStyle(
                                color: ColorConstants.mainblack, fontSize: 14),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        "cookbook",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            fit: BoxFit.cover,
                            ImageConstants.nature_image_1,
                            height: 88,
                            width: 148,
                          ),
                          Positioned(
                              bottom: 10,
                              right: 6,
                              child: Container(
                                height: 14,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: ColorConstants.mainblack
                                        .withOpacity(.64),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "0:50",
                                    style: TextStyle(
                                        color: ColorConstants.mainwhite,
                                        fontSize: 10),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 4,
                                width: 148,
                                color: ColorConstants.mainred,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Best beautiful travel\ndestinations",
                            style: TextStyle(
                                color: ColorConstants.mainblack, fontSize: 14),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        "touropia",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            fit: BoxFit.cover,
                            ImageConstants.interior_img,
                            height: 88,
                            width: 148,
                          ),
                          Positioned(
                              bottom: 10,
                              right: 6,
                              child: Container(
                                height: 14,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: ColorConstants.mainblack
                                        .withOpacity(.64),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "0:50",
                                    style: TextStyle(
                                        color: ColorConstants.mainwhite,
                                        fontSize: 10),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 4,
                                width: 148,
                                color: ColorConstants.mainred,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Chocolate brownie\ncake",
                            style: TextStyle(
                                color: ColorConstants.mainblack, fontSize: 14),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        "cookbook",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            fit: BoxFit.cover,
                            ImageConstants.nature_image_2,
                            height: 88,
                            width: 148,
                          ),
                          Positioned(
                              bottom: 10,
                              right: 6,
                              child: Container(
                                height: 14,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: ColorConstants.mainblack
                                        .withOpacity(.64),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "0:50",
                                    style: TextStyle(
                                        color: ColorConstants.mainwhite,
                                        fontSize: 10),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 4,
                                width: 148,
                                color: ColorConstants.mainred,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Chocolate brownie\ncake",
                            style: TextStyle(
                                color: ColorConstants.mainblack, fontSize: 14),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        "cookbook",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            fit: BoxFit.cover,
                            ImageConstants.cosmetics_img,
                            height: 88,
                            width: 148,
                          ),
                          Positioned(
                              bottom: 10,
                              right: 6,
                              child: Container(
                                height: 14,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: ColorConstants.mainblack
                                        .withOpacity(.64),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    "0:50",
                                    style: TextStyle(
                                        color: ColorConstants.mainwhite,
                                        fontSize: 10),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                height: 4,
                                width: 148,
                                color: ColorConstants.mainred,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Text(
                            "Chocolate brownie\ncake",
                            style: TextStyle(
                                color: ColorConstants.mainblack, fontSize: 14),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        "cookbook",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class categoriesSection extends StatelessWidget {
  const categoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 286,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.history,
                    color: ColorConstants.mainblack,
                    size: 25,
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Text(
                    "History",
                    style: TextStyle(
                        color: ColorConstants.mainblack, fontSize: 17),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(),
                    ));
              },
            ),
            Row(
              children: [
                Icon(
                  Icons.slideshow,
                  color: ColorConstants.mainblack,
                  size: 25,
                ),
                SizedBox(
                  width: 21,
                ),
                Text(
                  "Your videos",
                  style:
                      TextStyle(color: ColorConstants.mainblack, fontSize: 17),
                )
              ],
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.download,
                    color: ColorConstants.mainblack,
                    size: 25,
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Downloads ",
                        style: TextStyle(
                            color: ColorConstants.mainblack, fontSize: 17),
                      ),
                      Text(
                        "67 videos",
                        style: TextStyle(
                            color: ColorConstants.maingrey, fontSize: 13),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.check_circle,
                      color: ColorConstants.mainblack, size: 25)
                ],
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DownloadsScreen(),
                  ),
                  (route) => true,
                );
              },
            ),
            Row(
              children: [
                Icon(
                  Icons.movie_creation_outlined,
                  color: ColorConstants.mainblack,
                  size: 25,
                ),
                SizedBox(
                  width: 21,
                ),
                Text(
                  "Your movies",
                  style:
                      TextStyle(color: ColorConstants.mainblack, fontSize: 17),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: ColorConstants.mainblack,
                  size: 25,
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Watch later",
                      style: TextStyle(
                          color: ColorConstants.mainblack, fontSize: 17),
                    ),
                    Text(
                      "4 unwatched videos",
                      style: TextStyle(
                          color: ColorConstants.maingrey, fontSize: 13),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
