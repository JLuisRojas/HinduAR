import 'package:flutter/material.dart';
import 'package:hindu_ar/stories/story.dart';

import 'arScreen.dart';

class StoryScreen extends StatelessWidget {
  final Story story;

  StoryScreen({
    @required this.story,
  });

  static final GlobalKey<ScaffoldState> _scaffoldKey =
    GlobalKey<ScaffoldState>();

  final colorA = Color.fromRGBO(29, 33, 43, 1.0);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        elevation: 0,
        backgroundColor: colorA,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(Icons.visibility, 
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArScreen(ar: story.ar),
                  ),
                );
              }
            ),
          ),
          Container(width: 10),
        ],
      ),
      backgroundColor: colorA,
      key: _scaffoldKey,
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
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width / 5,
                  ),
                  child: Image.asset(story.image)
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 30,
                  ),
                  child: Text(
                    story.title,
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                for(var section in story.sections)
                  buildSection(section),

                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width / 10,
                    ),
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ArScreen(ar: story.ar),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        side: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Ver AR",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection(Section section) {
    return Column(
      children: [
        if(section != null && section.title.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Text(
                section.title,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: Text(
            section.body,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
