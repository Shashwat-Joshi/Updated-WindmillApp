import 'package:flutter/material.dart';
import '../helpers/curvePainter.dart';
import '../helpers/colorGradient.dart';
import 'selectFarm.dart';
import 'graphOutputs.dart';

class HowCanWeHelpYou extends StatefulWidget {
  @override
  _HowCanWeHelpYouState createState() => _HowCanWeHelpYouState();
}

class _HowCanWeHelpYouState extends State<HowCanWeHelpYou> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        CustomPaint(
          painter: CurvePainter(),
          size: Size.infinite,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: height / 3.5),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "How can we help you ?",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient,
                      ),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 120.0)),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectFarm(),
                        ),
                      );
                    },
                    child: Text(
                      "1. Power forecast\n    (Location Wise)",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textScaleFactor: 1.25,
                    ),
                    color: Colors.cyan[300],
                  ),
                  Padding(padding: EdgeInsets.only(top: 90.0)),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GraphOutputs(),
                        ),
                      );
                    },
                    child: Text(
                      "2. Optimum output",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textScaleFactor: 1.25,
                    ),
                    color: Colors.cyan[300],
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
