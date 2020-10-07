import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color accColor = Colors.greenAccent[400];

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    theme: ThemeData(
      primaryColor: const Color(0xFF111111),
      accentColor: accColor,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
    ),
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Ali Ata Official'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        padding: EdgeInsets.all(20),
        color: Colors.white10,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Latest Track',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 25, color: accColor),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/rc.jpg',  width: double.infinity),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
