import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
        title: Text(
          'Paramètres',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SettingsBody(),
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

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Langue'),
          leading: Icon(Icons.language),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Notifications'),
          leading: Icon(Icons.notifications),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Mode sombre'),
          leading: Icon(Icons.nightlight_round),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Synchronisation des données'),
          leading: Icon(Icons.sync),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Paramètres avancés'),
          leading: Icon(Icons.settings),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Sauvegarder les données'),
          leading: Icon(Icons.backup),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Thème'),
          leading: Icon(Icons.color_lens),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Localisation'),
          leading: Icon(Icons.location_on),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Paramètres réseau'),
          leading: Icon(Icons.network_wifi),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
        ListTile(
          title: Text('Son et vibrations'),
          leading: Icon(Icons.volume_up),
          onTap: () {
            // Action lorsque l'utilisateur appuie sur l'élément
          },
        ),
        Divider(),
      ],
    );
  }
}
