import 'package:flutter/material.dart';


class IncidentForm extends StatefulWidget {
  @override
  _IncidentFormPageState createState() => _IncidentFormPageState();
}

class _IncidentFormPageState extends State<IncidentForm> {
  TextEditingController _descriptionController = TextEditingController();
  List<String> _selectedTransformers = [];
  List<String> _selectedTypes = [];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incident Form',
        style: TextStyle(
          color: Colors.white
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
                Icons.error,
                size: 60.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Description de l\'incident',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.description),
              ),
            ),
            SizedBox(height: 20.0),
            // Choisir les transformateurs
            Text(
              'Transformateurs concernés:',
              style: TextStyle(fontSize: 16.0),
            ),
            CheckboxListTile(
              title: Text('Transformer A'),
              value: _selectedTransformers.contains('Transformer A'),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedTransformers.add('Transformer A');
                  } else {
                    _selectedTransformers.remove('Transformer A');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Transformer B'),
              value: _selectedTransformers.contains('Transformer B'),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedTransformers.add('Transformer B');
                  } else {
                    _selectedTransformers.remove('Transformer B');
                  }
                });
              },
            ),
            // Choisir le type d'incident
            SizedBox(height: 20.0),
            Text(
              'Types d\'incident:',
              style: TextStyle(fontSize: 16.0),
            ),
            CheckboxListTile(
              title: Text('Type 1'),
              value: _selectedTypes.contains('Type 1'),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedTypes.add('Type 1');
                  } else {
                    _selectedTypes.remove('Type 1');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Type 2'),
              value: _selectedTypes.contains('Type 2'),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedTypes.add('Type 2');
                  } else {
                    _selectedTypes.remove('Type 2');
                  }
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/incident_list');
              },
              child: Text('Soumettre'),
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
