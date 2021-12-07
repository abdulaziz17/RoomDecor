import 'package:RoomDecor/PrioritySelect.dart';
import 'package:flutter/material.dart';

class Aspects extends StatefulWidget {
  @override
  _AspectsState createState() => _AspectsState();
}

class _AspectsState extends State<Aspects> {
  bool other = false;
  bool paint = false;
  bool light = false;
  bool windows = false;
  bool floor = false;
  bool furniture = false;
  int _selectedRadio;
  int _selectedIndex_ = 0;

  int _selectedIndex = 0;
  void _callOnItemTapped(int index) {
    if (index == 0) {
      Navigator.pop(context);
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrioritySelect()),
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
                'In which aspect do you need help?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              )),
                       CheckboxListTile(
            title: const Text('Paint and Wall Coverings'),
            value: this.paint,
            onChanged: (bool paint) {
              setState(() {
                this.paint = paint;
              });
            },
          ),


            RadioListTile(
            value: 1,
            groupValue: _selectedRadio,
            title: Text('Lighting'),
            onChanged: (value) {
              setState(() {
                _selectedRadio = value;
              });
            },
          ),
          RadioListTile(
          value: 2,
          groupValue: _selectedRadio,
          title: Text('Paint and wall covering'),
          onChanged: (value){
            setState(() {
                          
                        });
          },
          ),



                   CheckboxListTile(
            title: const Text('Loghting and Electrical'),
            value: this.light,
            onChanged: (bool light) {
              setState(() {
                this.light = light;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Windows and Doors'),
            value: this.windows,
            onChanged: (bool windows) {
              setState(() {
                this.windows = windows;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Floors'),
            value: this.floor,
            onChanged: (bool floor) {
              setState(() {
                this.floor = floor;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Furniture and Decor'),
            value: this.furniture,
            onChanged: (bool furniture) {
              setState(() {
                this.furniture = furniture;
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
          // buildCheckbox(),
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
