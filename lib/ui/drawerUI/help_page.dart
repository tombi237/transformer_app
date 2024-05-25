import 'package:flutter/material.dart';

void main() {
  runApp(HelpPage());
}

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: HelpBody(),
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
        selectedItemColor: Colors.teal, // Couleur du bouton sélectionné
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          // Handle navigation here
        },
      ),
    );
  }
}

class HelpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        HelpSection(
          title: 'Bienvenue dans l\'aide de l\'application de gestion des transformateurs',
          content: 'Cette section fournit des informations détaillées sur l\'utilisation de l\'application, les fonctionnalités disponibles et des solutions à certains problèmes courants.',
        ),
        SizedBox(height: 20),
        HelpSection(
          title: 'Comment ajouter un nouveau transformateur ?',
          content: 'Pour ajouter un nouveau transformateur, appuyez sur le bouton "+" dans la page principale de l\'application. Remplissez ensuite les champs requis avec les informations pertinentes sur le transformateur, telles que le nom, la localisation, etc. Enregistrez les modifications et le nouveau transformateur sera ajouté à la liste.',
        ),
        SizedBox(height: 20),
        HelpSection(
          title: 'Comment modifier les détails d\'un transformateur existant ?',
          content: 'Pour modifier les détails d\'un transformateur existant, accédez à la liste des transformateurs dans l\'application. Appuyez sur le transformateur que vous souhaitez modifier pour ouvrir ses détails. Ensuite, appuyez sur le bouton "Modifier" et effectuez les modifications nécessaires. Enregistrez les modifications une fois terminé.',
        ),
        SizedBox(height: 20),
        HelpSection(
          title: 'Comment supprimer un transformateur de la liste ?',
          content: 'Pour supprimer un transformateur de la liste, accédez à la liste des transformateurs dans l\'application. Faites glisser le transformateur que vous souhaitez supprimer de droite à gauche, puis appuyez sur le bouton "Supprimer". Confirmez votre action, et le transformateur sera supprimé de la liste.',
        ),
        SizedBox(height: 20),
        HelpSection(
          title: 'Contactez-nous',
          content: 'Si vous rencontrez des problèmes techniques, ou si vous avez des questions ou des suggestions, n\'hésitez pas à nous contacter à support@exemple.com. Nous sommes là pour vous aider !',
        ),
      ],
    );
  }
}

class HelpSection extends StatelessWidget {
  final String title;
  final String content;

  HelpSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              content,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
