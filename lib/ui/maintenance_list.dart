import 'package:flutter/material.dart';

class MaintenanceList extends StatefulWidget {
  @override
  _MaintenanceListPageState createState() => _MaintenanceListPageState();
}

class _MaintenanceListPageState extends State<MaintenanceList> {
  List<Map<String, dynamic>> _maintenances = [
    {
      'title': 'Maintenance 1',
      'date': '2024-05-19',
      'incident': 'Incident 1',
      'types': ['Type 1', 'Type 2'],
      'status': 'Open',
      'imagePath': 'assets/images/top6.png', // Chemin de l'image
    },
    {
      'title': 'Maintenance 2',
      'date': '2024-05-18',
      'incident': 'Incident 2',
      'types': ['Type 3'],
      'status': 'Closed',
      'imagePath': 'assets/images/top5.png', // Chemin de l'image
    },

    {
      'title': 'Maintenance 3',
      'date': '2024-05-18',
      'incident': 'Incident 2',
      'types': ['Type 3'],
      'status': 'Closed',
      'imagePath': 'assets/images/top4.jpg', // Chemin de l'image
    },

    {
      'title': 'Maintenance 3',
      'date': '2024-05-18',
      'incident': 'Incident 2',
      'types': ['Type 3'],
      'status': 'Closed',
      'imagePath': 'assets/images/top3.jpg', // Chemin de l'image
    },

    {
      'title': 'Maintenance 4',
      'date': '2024-05-18',
      'incident': 'Incident 2',
      'types': ['Type 3'],
      'status': 'Closed',
      'imagePath': 'assets/images/top8.png', // Chemin de l'image
    },

    {
      'title': 'Maintenance 10',
      'date': '2024-08-11',
      'incident': 'Incident 2',
      'types': ['Type 3'],
      'status': 'Open',
      'imagePath': 'assets/images/top9.png', // Chemin de l'image
    },
    // Ajoutez plus de maintenances si nécessaire
  ];

  late TextEditingController _searchController;
  late List<Map<String, dynamic>> _filteredMaintenances;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredMaintenances = _maintenances;
  }

  void _filterMaintenances(String query) {
    setState(() {
      _filteredMaintenances = _maintenances.where((maintenance) {
        final title = maintenance['title']!.toLowerCase();
        return title.contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maintenance List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterMaintenances,
              decoration: InputDecoration(
                hintText: 'Search Maintenance...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {
                    _searchController.clear();
                    _filterMaintenances('');
                  },
                  icon: Icon(Icons.clear),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredMaintenances.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _filteredMaintenances[index]['title']!,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                        ),
                        SizedBox(height: 10),
                        Image.asset(
                          _filteredMaintenances[index]['imagePath'], // Chemin de l'image
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text('Date: ${_filteredMaintenances[index]['date']}'),
                        SizedBox(height: 5),
                        Text('Incident: ${_filteredMaintenances[index]['incident']}'),
                        SizedBox(height: 5),
                        Text('Types: ${(_filteredMaintenances[index]['types'] as List).join(', ')}'),
                        SizedBox(height: 5),
                        Text('Status: ${_filteredMaintenances[index]['status']}'),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildIconButton(Icons.edit, () {
                              // Logique de modification
                              Navigator.of(context).pop();
                              Navigator.pushNamed(context, "/maintenance_form");
                            }),
                            SizedBox(width: 10),
                            _buildIconButton(Icons.delete, () {
                              // Logique de suppression
                            }),
                            SizedBox(width: 10),
                            _buildIconButton(Icons.info, () {
                              // Logique des détails
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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

  Widget _buildIconButton(IconData icon, void Function() onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.teal,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
