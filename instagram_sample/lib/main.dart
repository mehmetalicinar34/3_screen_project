// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Image.asset("assets/images/logo.png",),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black87,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8, bottom: 8, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.black87,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget(
                              "assets/images/keyvan.jpg",
                              "keyvan_arasteh",
                            ),
                            StoryWidget(
                              "assets/images/ramazan.jpg",
                              "ramazan_sen",
                            ),
                            StoryWidget(
                              "assets/images/keyvan.jpg",
                              "keyvan_arasteh",
                            ),
                            StoryWidget(
                              "assets/images/ahmetselim.jpg",
                              "ahmet_selim",
                            ),
                            StoryWidget(
                              "assets/images/ramazan.jpg",
                              "ramazan_sen",
                            ),
                            StoryWidget(
                              "assets/images/keyvan.jpg",
                              "keyvan_arasteh",
                            ),
                            StoryWidget(
                              "assets/images/ahmetselim.jpg",
                              "ahmet_selim",
                            ),
                          ],
                        ),
                      ),
                      PostItem(
                          "assets/images/keyvan.jpg",
                          "assets/images/kizkulesi.jpeg",
                          "keyvan_arasteh",
                          "Kız Kulesi"),
                      PostItem(
                          "assets/images/ahmetselim.jpg",
                          "assets/images/kopru.jpg",
                          "keyvan_arasteh",
                          "15 Temmuz Köprüsü"),
                      PostItem(
                          "assets/images/ramazan.jpg",
                          "assets/images/galata.jpg",
                          "keyvan_arasteh",
                          "Galata Kulesi"),
                      PostItem(
                          "assets/images/ahmetselim.jpg",
                          "assets/images/ayasofya.jpg",
                          "keyvan_arasteh",
                          "15 Ayasofya"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(
                photo,
              ),
              LikeCommentBox(),
              CommentBox("keyvan_arasteh",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra ullamcorper eros, nec tincidunt neque faucibus quis."),
              CommentBox("ramazan_sen",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra ullamcorper eros, nec tincidunt neque faucibus quis."),
              CommentBox("ahmet_selim",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra ullamcorper eros, nec tincidunt neque faucibus quis."),
            ],
          ),
        ),
      );

  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.comment_bank_outlined,
                color: Colors.black87,
              ),
            ],
          ),
          Icon(
            Icons.flag_circle_outlined,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(214, 71, 103, 1),
                Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
