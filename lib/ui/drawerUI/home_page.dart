import 'package:flutter/material.dart';
import 'package:transformer_app/widgets/drawer_widget.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
          'Gestion des Transformateurs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/top1.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Bienvenue dans l\'application de gestion des transformateurs électriques!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Cette application facilite la gestion de vos transformateurs électriques. Vous pouvez ajouter, mettre à jour et suivre l\'état de chaque transformateur, gérer les incidents et les maintenances, et bien plus encore.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/maintenance_list");
              },
              child: Text(
                'Visualiser les maintenances',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
              height: 20.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            SizedBox(height: 20.0),
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
        onTap:(value) {
          _onItemTapped;

        },
      ),
    );
  }
}
