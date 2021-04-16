import 'package:flutter/material.dart';
import 'package:hindu_ar/screens/story.dart';
import 'package:hindu_ar/stories/story.dart';
import 'package:hindu_ar/stories/shiva.dart';
import 'package:hindu_ar/stories/ganesha.dart';

class HomeScreen extends StatelessWidget {
  final colorA = Color.fromRGBO(29, 33, 43, 1.0);
  final colorB = Color(0xF1F9EA);
  final colorC = Color(0xEBF3FE);
  final colorD = Color(0xFFD8D6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorA,
        leading: Icon(Icons.menu, size: 30, color: Colors.white,),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.bookmark_border, 
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search, 
              color: Colors.white,
              size: 30,
            ),
          ),
          Container(width: 10),
        ],
        elevation: 0,
      ),
      backgroundColor: colorA,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              right: 30,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    "🛕 Mitología Hindú",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Text(
                              "Dioses",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "•",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Text(
                              "Templos",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                buildCard(
                  context,
                  name: "Shiva",
                  img: "assets/shiva.png",
                  story: Shiva(),
                ),
                buildCard(
                  context,
                  name: "Ganesha",
                  img: "assets/ganesha2.png",
                  story: Ganesha(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, {
    @required String name,
    @required String img,
    @required Story story,
  }) {
    final screenSize = MediaQuery.of(context).size;
    
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StoryScreen(story: story),
          ));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Color.fromRGBO(49, 53, 63, 1.0),
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: screenSize.width / 6,
                      child: Image.asset(img)
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
