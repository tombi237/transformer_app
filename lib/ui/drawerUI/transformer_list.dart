import 'package:flutter/material.dart';


class TransformerList extends StatefulWidget {
  @override
  _TransformerListPageState createState() => _TransformerListPageState();
}

class _TransformerListPageState extends State<TransformerList> {
  List<Map<String, String>> _transformers = [
    {
      'name': 'Transformer 1',
      'code': 'ABC123',
      'location': 'Location 1',
      'capacity': '1000',
      'status': 'Fonctionnel',
    },
    {
      'name': 'Transformer 2',
      'code': 'DEF456',
      'location': 'Location 2',
      'capacity': '2000',
      'status': 'En maintenance',
    },
    {
      'name': 'Transformer 3',
      'code': 'GHI789',
      'location': 'Location 3',
      'capacity': '1500',
      'status': 'Fonctionnel',
    },
  ];

  late List<Map<String, String>> _filteredTransformers;
  late TextEditingController _searchController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _filteredTransformers = _transformers;
    _searchController = TextEditingController();
  }

  void _filterTransformers(String query) {
    setState(() {
      _filteredTransformers = _transformers.where((transformer) {
        final name = transformer['name']!.toLowerCase();
        return name.contains(query.toLowerCase());
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
          'Transformer List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              _searchController.clear();
              _filterTransformers('');
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _searchController,
              onChanged: _filterTransformers,
              decoration: InputDecoration(
                hintText: 'Search Transformers...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredTransformers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: ListTile(
                      title: Text(
                        _filteredTransformers[index]['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Code: ${_filteredTransformers[index]['code']}'),
                              SizedBox(height: 10),
                              Text('Location: ${_filteredTransformers[index]['location']}'),
                              SizedBox(height: 10),
                              Text('Capacity: ${_filteredTransformers[index]['capacity']}'),
                              SizedBox(height: 10),
                              Text('Status: ${_filteredTransformers[index]['status']}'),
                              SizedBox(height: 10),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              _buildIconButton(Icons.add, () {
                                // Logique de l'ajout
                                Navigator.of(context).pop();
                                Navigator.pushNamed(context, "/transformer_form");
                              }),
                              SizedBox(height: 10),
                              _buildIconButton(Icons.edit, () {
                                // Logique de la modification
                              }),
                              SizedBox(height: 10),
                              _buildIconButton(Icons.delete, () {
                                // Logique de la suppression
                              }),
                              SizedBox(height: 10),
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
        ),
      ),
    );
  }
}
