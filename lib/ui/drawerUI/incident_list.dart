import 'package:flutter/material.dart';

class IncidentList extends StatefulWidget {
  @override
  _IncidentListPageState createState() => _IncidentListPageState();
}

class _IncidentListPageState extends State<IncidentList> {
  int _selectedIndex = 0;

  List<Map<String, String>> _incidents = [
    {
      'title': 'Incident 1',
      'date': '2024-05-19',
      'severity': 'High',
      'status': 'Open',
    },
    {
      'title': 'Incident 2',
      'date': '2024-05-18',
      'severity': 'Medium',
      'status': 'Closed',
    },
    {
      'title': 'Incident 1',
      'date': '2024-05-19',
      'severity': 'High',
      'status': 'Open',
    },
    {
      'title': 'Incident 2',
      'date': '2024-05-18',
      'severity': 'Medium',
      'status': 'Closed',
    },
    {
      'title': 'Incident 1',
      'date': '2024-05-19',
      'severity': 'High',
      'status': 'Open',
    },
    {
      'title': 'Incident 2',
      'date': '2024-05-18',
      'severity': 'Medium',
      'status': 'Closed',
    },
    // Ajoutez plus d'incidents si nécessaire
  ];

  late TextEditingController _searchController;
  late List<Map<String, String>> _filteredIncidents;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredIncidents = _incidents;
  }

  void _filterIncidents(String query) {
    setState(() {
      _filteredIncidents = _incidents.where((incident) {
        final title = incident['title']!.toLowerCase();
        return title.contains(query.toLowerCase());
      }).toList();
    });
  }

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
          'Incident List',
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
              onChanged: _filterIncidents,
              decoration: InputDecoration(
                hintText: 'Search Incidents...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {
                    _searchController.clear();
                    _filterIncidents('');
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
              itemCount: _filteredIncidents.length,
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
                          _filteredIncidents[index]['title']!,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                        ),
                        SizedBox(height: 10),
                        Text('Date: ${_filteredIncidents[index]['date']}'),
                        SizedBox(height: 5),
                        Text('Severity: ${_filteredIncidents[index]['severity']}'),
                        SizedBox(height: 5),
                        Text('Status: ${_filteredIncidents[index]['status']}'),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildIconButton(Icons.edit, () {
                              // Logique de modification
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
