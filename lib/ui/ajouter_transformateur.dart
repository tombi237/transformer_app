import 'package:flutter/material.dart';


class TransformerForm extends StatefulWidget {
  @override
  _TransformerFormPageState createState() => _TransformerFormPageState();
}

class _TransformerFormPageState extends State<TransformerForm> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextEditingController _transformerCodeController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _capacityController = TextEditingController();
  String _selectedStatus = 'Fonctionnel'; // État par défaut

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transformer Form',
        style: TextStyle(
          color: Colors.white,

        ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.power,
                size: 60.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _transformerCodeController,
              decoration: InputDecoration(
                labelText: 'Transformer Code',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.code),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _capacityController,
              decoration: InputDecoration(
                labelText: 'Capacity',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.flash_on),
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField(
              value: _selectedStatus,
              items: ['En maintenance', 'Hors service', 'En attente', 'Fonctionnel']
                  .map((status) {
                return DropdownMenuItem(
                  value: status,
                  child: Text(status),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedStatus = value.toString();
                });
              },
              decoration: InputDecoration(
                labelText: 'État',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.info),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/transformers');              },
              child: Text('Add Transformer'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
