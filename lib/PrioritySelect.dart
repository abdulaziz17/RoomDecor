import 'Addcom.dart';
import 'package:flutter/material.dart';

class PrioritySelect extends StatefulWidget {
  @override
  _PrioritySelectState createState() => _PrioritySelectState();
}

class _PrioritySelectState extends State<PrioritySelect> {
  int _selectedRadio;
  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddCom()),
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
                'Select what is more important to you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              )),
          RadioListTile(
            value: 1,
            groupValue: _selectedRadio,
            title: Text('I want to minimize cost'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: _selectedRadio,
            title: Text('I want mid price and quality'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: _selectedRadio,
            title: Text('I want mid to high price and quality'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
            value: 4,
            groupValue: _selectedRadio,
            title: Text('I want the best of results'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
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
        iconSize: 35,
        onTap: _callOnItemTapped,
      ),
    );
  }
}
