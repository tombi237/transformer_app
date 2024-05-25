import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white, // Fond du drawer en deeporange

      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal, // Header du drawer en noir
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/top1.png"),
                backgroundColor: Colors.white, // Avatar en blanc
                radius: 60,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Accueil',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal, // Texte en blanc
              ),
            ),
            leading: Icon(
              Icons.home_outlined,
              color: Colors.teal,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/accueil");
              //  la navigation vers la page d'accueil de l'application
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Liste des Transformateurs',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.transform_outlined,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/transformers");
              // Ajoutez ici la navigation vers la page de la liste des transformateurs
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Signaler une Panne',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.report_problem_outlined,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/signale");

              //  la navigation vers la page de signalement des pannes
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Suivi des Pannes',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.track_changes_outlined,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/suivie");

              //  la navigation vers la page de suivi des pannes
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Statistiques',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.bar_chart_outlined,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
             Navigator.pushNamed(context, "/dashboard");
              // la navigation vers la page des statistiques
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Paramètres',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.settings_outlined,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/setting");
              //  la navigation vers la page des paramètres
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Aide',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.help_outline,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/help");
              // Ajoutez ici la navigation vers la page d'aide
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'À Propos',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.info_outline,
              color: Colors.teal,
            ),
             trailing: Icon(
              Icons.arrow_right,
              color: Colors.teal,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/about");
            },
          ),
          Divider(
            color: Colors.teal,
          ),
          ListTile(
            title: Text(
              'Déconnexion',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/logout");
            },
          ),
          Divider(
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
