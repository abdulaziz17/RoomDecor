import 'package:RoomDecor/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'package:RoomDecor/Payment.Dart';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    }
  }

  File _img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Room Decor'),
          backgroundColor: Colors.blue),
      body: Center(
          child: Column(children: [
        _img == null
            ? Column(children: [
                SizedBox(
                  height: 200,
                ),
                Text('Would you like to add an image?'),
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                  onPressed: openCamera,
                  child: Text('Open Camera'),
                )
              ])
            : Container(
                height: 530,
                child: Image.file(_img),
              ),
      ])),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.navigate_before),
              title: Text('Previous'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next),
              title: Text('Next'),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          iconSize: 35,
          onTap: _callOnItemTapped,
          elevation: 0),
    );
  }

  Future openCamera() async {
    var img = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _img = img;
    });
  }
}
