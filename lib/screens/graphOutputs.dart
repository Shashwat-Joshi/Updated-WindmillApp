import 'package:flutter/material.dart';
import '../helpers/curvePainter.dart';
import '../helpers/colorGradient.dart';
import 'farmDetails.dart';

class GraphOutputs extends StatefulWidget {
  @override
  _GraphOutputsState createState() => _GraphOutputsState();
}

class _GraphOutputsState extends State<GraphOutputs> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        CustomPaint(
          painter: CurvePainter(),
          size: Size.infinite,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 10.0),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: height / 4.5),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Output of multiple farms",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient,
                      ),
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    // FIXME:
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmDetails(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: height / 2.8,
                      width: width,
                      child: Center(
                        child: Text("Graph"),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    // FIXME:
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmDetails(),
                        ),
                      );
                    },
                    child: Container(
                      height: height / 2.8,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text("Graph"),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    // FIXME:
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmDetails(),
                        ),
                      );
                    },
                    child: Container(
                      height: height / 2.8,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text("Graph"),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    // FIXME:
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmDetails(),
                        ),
                      );
                    },
                    child: Container(
                      height: height / 2.8,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text("Graph"),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    // FIXME:
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmDetails(),
                        ),
                      );
                    },
                    child: Container(
                      height: height / 2.8,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text("Graph"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
