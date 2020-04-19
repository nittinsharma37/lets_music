import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => new _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Song Name"),
        ),
        backgroundColor: Colors.red,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            print("back button pressed");
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              print("more pressed");
            },
            icon: Icon(
              Icons.more_vert
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ClipPath(
            clipper: CustomClip(),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom:10.0),
              child: Container(
                height: MediaQuery.of(context).size.height /(3/2),
                width: double.infinity,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => new _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            print("arrow back pressed");
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 25.0,
          ),
        ),
        title: Text("title"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Container(
              height:  MediaQuery.of(context).size.height - 200.0,
              width: double.infinity,
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: ClipPath(
                clipper: CustomClip(),
                  child: Container(
                    color: Colors.red,
                    // ignore: argument_type_not_assignable
                    child: Image(
                      image: AssetImage("assets/img/cover.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 5.0, 30.0, 5.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        print("shuffle pressed");
                      },
                      child: Icon(
                        Icons.shuffle,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        print("previous pressed");
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        print("play/paused pressed");
                      },
                      child: Icon(
                        Icons.play_arrow,
                        size: 50.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        print("shuffle pressed");
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        print("shuffle pressed");
                      },
                      child: Icon(
                        Icons.repeat,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
*/
class CustomClip extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
