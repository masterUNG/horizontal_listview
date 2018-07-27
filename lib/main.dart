import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new _StatefulWidget(),
    );
  }
}

class _StatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new __StatefulWidgetState();
  }
}

class __StatefulWidgetState extends State<_StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    print('Width ==> ' + screenSize.width.toString());
    print('Height ==> ' + screenSize.height.toString());

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Horizontal ListView"),
      ),
      body: new Container(
        child: new ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.red,
              child: new Center(
                child: new Image.asset(
                    'images/master0.JPG'
                ),
              ),
            ),
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.blue,
                child: new Center(
                  child: new Image.asset(
                      'images/master1.JPG'
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
