import 'package:RoomDecor/ARModel.dart';
import 'package:RoomDecor/AddImage.dart';
import 'package:RoomDecor/MyHomePage.dart';
import 'package:flutter/material.dart';
// import 'MyHomePage.dart';

class FinishDesign extends StatefulWidget {
  @override
  _FinishDesignState createState() => _FinishDesignState();
}

class _FinishDesignState extends State<FinishDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Room Decor'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 200,
          ),
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: new MaterialButton(
              child: Text("Urvse paid Expert seice"),
              // textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddImage()),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: new MaterialButton(
              child: Text("Use AR model"),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
