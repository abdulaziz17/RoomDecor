import 'package:RoomDecor/SquareFootage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool kitchen = false;
  bool bedroom = false;
  bool lroom = false;
  bool toilet = false;
  bool droom = false;
  bool hallway = false;
  bool entrance = false;
  bool officeroom = false;
  bool other = false;
  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SquareFootage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Room Decor'),
          backgroundColor: Colors.blue),
      body: ListView(
        children: [
          Container(
              width: 100,
              height: 50,
              color: Colors.blue[300],
              child: Text(
                'Select rooms',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              )),
          CheckboxListTile(
            title: const Text('Kitchen'),
            value: this.kitchen,
            onChanged: (bool kitchen) {
              setState(() {
                this.kitchen = kitchen;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Bedroom'),
            value: this.bedroom,
            onChanged: (bool value) {
              setState(() {
                this.bedroom = value;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Living Room'),
            value: this.lroom,
            onChanged: (bool lroom) {
              setState(() {
                this.lroom = lroom;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Toilet'),
            value: this.toilet,
            onChanged: (bool toilet) {
              setState(() {
                this.toilet = toilet;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Dining Room'),
            value: this.droom,
            onChanged: (bool droom) {
              setState(() {
                this.droom = droom;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Hallway'),
            value: this.hallway,
            onChanged: (bool hallway) {
              setState(() {
                this.hallway = hallway;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Entrance'),
            value: this.entrance,
            onChanged: (bool entrance) {
              setState(() {
                this.entrance = entrance;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Office Room'),
            value: this.officeroom,
            onChanged: (bool officeroom) {
              setState(() {
                this.officeroom = officeroom;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Bedroom'),
            value: this.bedroom,
            onChanged: (bool bedroom) {
              setState(() {
                this.bedroom = bedroom;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Other'),
            value: this.other,
            onChanged: (bool other) {
              setState(() {
                this.other = other;
              });
            },
          ),
        ],
      ),
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
}
