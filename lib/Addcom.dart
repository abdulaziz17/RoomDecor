import 'package:RoomDecor/FinishDesign.dart';
import 'package:flutter/material.dart';

class AddCom extends StatefulWidget {
  @override
  _AddComState createState() => _AddComState();
}

class _AddComState extends State<AddCom> {
  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FinishDesign()),
      );
    }
  }

  bool value = true;
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
                'Please add required comments',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                labelText: 'Add Comments', border: OutlineInputBorder()),
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
