import 'package:RoomDecor/Aspects.dart';
import 'package:flutter/material.dart';

class SquareFootage extends StatefulWidget {
  @override
  _SquareFootageState createState() => _SquareFootageState();
}

class _SquareFootageState extends State<SquareFootage> {
  int _selectedRadio;
  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Aspects()),
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
              width: 80,
              height: 95,
              color: Colors.blue[300],
              child: Text(
                'Approximate square footage of the room',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              )),
          RadioListTile(
            value: 1,
            groupValue: _selectedRadio,
            title: Text('< 300 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: _selectedRadio,
            title: Text('300-500 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: _selectedRadio,
            title: Text('500-1000 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 4,
            groupValue: _selectedRadio,
            title: Text('1000-2000 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 5,
            groupValue: _selectedRadio,
            title: Text('2000-3000 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 6,
            groupValue: _selectedRadio,
            title: Text('>3000 Square feet'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          )
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
        iconSize: 35,
        onTap: _callOnItemTapped,
      ),
    );
  }
}
