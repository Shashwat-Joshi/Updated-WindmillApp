import 'package:flutter/material.dart';
import '../helpers/curvePainter.dart';
import '../helpers/colorGradient.dart';

class FarmDetails extends StatefulWidget {
  @override
  _FarmDetailsState createState() => _FarmDetailsState();
}

class _FarmDetailsState extends State<FarmDetails> {
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
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 10.0),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: height / 4.5),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Details of Farm",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient,
                      ),
                      textScaleFactor: 1.5,
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
