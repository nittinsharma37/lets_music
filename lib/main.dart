import 'package:flutter/material.dart';

import 'ui/nowplaying.dart';
import 'ui/tipcalc.dart';
import 'utils/rotatedicon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lets Play",
      theme: ThemeData(
        primaryColor: Colors.red,
        secondaryHeaderColor: Color(0xffaadd99),
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Lets Play"),
        actions: <Widget>[
          IconButton(
            icon: RotatedIcon(),
            onPressed: () {
              print("Search button pressed");
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  print("Now playing pressed");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NowPlaying()));
                },
                elevation: 10.0,
                highlightColor: Colors.green,
                hoverColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Text(
                      "Now Playing",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ],
                ),
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                 print("Tip calculator pressed");
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>TipCalculator()));
                },
                elevation: 10.0,
                highlightColor: Colors.green,
                hoverColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    Text(
                      "Tip Calculator",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ],
                ),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
