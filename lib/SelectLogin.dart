import 'package:RoomDecor/DesignReview.dart';
import 'package:RoomDecor/start.dart';
import 'package:flutter/material.dart';

class SelectLogin extends StatefulWidget {
  @override
  _SelectLoginState createState() => _SelectLoginState();
}

class _SelectLoginState extends State<SelectLogin> {
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
            height: 180,
          ),
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: new MaterialButton(
              child: Text("Login for Designer"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartDecor()),
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
              child: Text("Login for User"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartDecor()),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
