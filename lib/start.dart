import 'package:RoomDecor/MyHomePage.dart';
import 'package:flutter/material.dart';

class StartDecor extends StatefulWidget {
  @override
  _StartDecorState createState() => _StartDecorState();
}

class _StartDecorState extends State<StartDecor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Room Decor'),
            backgroundColor: Colors.blue),
        body: Center(
          child: SizedBox(
            width: 200.0,
            height: 100.0,
            child: new MaterialButton(
              child: Text("Start Design"),
              // textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
          ),
        ));
  }
}
