import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_photography/data/sample.dart';
import 'package:flutter_ui_photography/helper/color.dart';
import 'package:flutter_ui_photography/models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.lightGray,
      appBar: AppBar(
        backgroundColor: BrandColors.lightGray,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: BrandColors.darkGray,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            searchBox(),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For you",
                    style: TextStyle(
                      color: BrandColors.darkGray,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: BrandColors.lightGray,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recommend",
                              style: TextStyle(
                                color: BrandColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              width: 50,
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: BrandColors.orange,
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Likes",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  makePost(Sample.post),
                  makePost(Sample.postTwo)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makePost(Post post) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 28,
                backgroundImage: NetworkImage(post.user!.profilePicture),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.user!.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          post.location,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: BrandColors.grey,
                          ),
                        ),
                        Text(
                          "1hr",
                          style: TextStyle(
                            fontSize: 13,
                            color: BrandColors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 300,
            padding: EdgeInsets.only(
              top: 20.0,
            ),
            child: ListView.builder(
              itemCount: post.photos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return AspectRatio(
                  aspectRatio: 1.2 / 1,
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          post.photos[index],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: BrandColors.orange,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5,
                                      sigmaY: 5,
                                    ),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color:
                                            Colors.grey[600]!.withOpacity(0.1),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.link,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5,
                                      sigmaY: 5,
                                    ),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color:
                                            Colors.grey[600]!.withOpacity(0.1),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Best place to\nFind awesome photos",
            style: TextStyle(
              color: BrandColors.darkGray,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 3,
              top: 3,
              bottom: 3,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for photo",
                      hintStyle: TextStyle(
                        color: BrandColors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: BrandColors.orange,
                  height: double.infinity,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minWidth: 50,
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
