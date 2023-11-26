// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchBox(),
                        Divider(),
                        TopLocations(),
                        Divider(),
                        NearLocations(),
                        Divider(),
                        Suggestions(),
                        Divider(),
                        TopRated(),
                      ],
                    ),
                  ),
                ),
              ),
              BottomMenu(),
            ],
          )),
    );
  }

  Widget TopRated() => Container(
        child: Column(
          children: [
            TitleItem("Top Rated Places", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                ],
              ),
            ),
          ],
        ),
      );


  Widget Suggestions() => Container(
        child: Column(
          children: [
            TitleItem("Suggestions", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                  LocationItem("assets/images/ayasofya.jpg", "Ayasofya", "5km from you", "14₺"),
                  LocationItem("assets/images/kizkulesi.jpeg", "Kız Kulesi", "12km from you", "14₺"),
                  LocationItem("assets/images/galata.jpg", "Ayasofya", "19km from you", "14₺"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget LocationItem(String photo, String title, String description, String price) => Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(86, 158, 158, 158),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(width: 150, photo)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 125, 87, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/ramazan.jpg", "Ramazan Ş."),
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ramazan.jpg", "Ramazan Ş."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/ramazan.jpg", "Ramazan Ş."),
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/ramazan.jpg", "Ramazan Ş."),
                  StoryItem("assets/images/ahmetselim.jpg", "Ahmet S. O."),
                  StoryItem("assets/images/keyvan.jpg", "Keyvan A."),
                  StoryItem("assets/images/ramazan.jpg", "Ramazan Ş."),
                ],
              ),
            ),
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(86, 158, 158, 158),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Caferağa, Kadıköy",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: Color.fromARGB(255, 125, 87, 1),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 78),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(name,
              style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 10,
              )),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Ali",
                    style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 15,
                    )),
                Text("Explore Istanbul",
                    style: TextStyle(
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 18,
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.sunny,
                    size: 18,
                    color: Color.fromRGBO(236, 125, 87, 1),
                  ),
                ),
                SizedBox(width: 3),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.notifications,
                    size: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color.fromARGB(255, 243, 243, 243),
        width: 1,
      )),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home, true),
          BottomMenuItem("Home", Icons.groups, false),
          HighlitedItem("Home", Icons.maps_ugc),
          BottomMenuItem("Home", Icons.forum, false),
          BottomMenuItem("Home", Icons.person, false),
        ],
      ));

  Widget BottomMenuItem(
    String title,
    IconData icon,
    bool active,
  ) {
    var renk = Color.fromRGBO(178, 178, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget HighlitedItem(
    String title,
    IconData icon,
  ) {
    var renk = Color.fromRGBO(236, 125, 87, 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}
