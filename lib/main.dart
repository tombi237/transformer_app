import 'package:transformer_app/ui/ajouter_transformateur.dart';
import 'package:transformer_app/ui/contact_page.dart';
import 'package:transformer_app/ui/drawerUI/about_page.dart';
import 'package:transformer_app/ui/drawerUI/help_page.dart';
import 'package:transformer_app/ui/drawerUI/home_page.dart';
import 'package:transformer_app/ui/drawerUI/incident_list.dart';
import 'package:transformer_app/ui/drawerUI/localisation_page.dart';
import 'package:transformer_app/ui/drawerUI/login_page.dart';
import 'package:transformer_app/ui/drawerUI/register_page.dart';
import 'package:transformer_app/ui/drawerUI/setting_page.dart';
import 'package:transformer_app/ui/drawerUI/transformer_list.dart';
import 'package:transformer_app/ui/incident_form.dart';
import 'package:transformer_app/ui/maintenance_form.dart';
import 'package:transformer_app/ui/maintenance_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Transformateurs ENEO à Yaoundé',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      //home: MainPage(),
      routes: {
        "/home": (context) => MainPage(),
        "/setting": (context) => SettingsPage(),
        "/help": (context) => HelpPage(),
        "/about": (context) => AboutPage(),
        "/logout": (context) => LoginPage(),
        "/register": (context) => SignupPage(),
        "/transformers": (context) => TransformerList(),
        "/signale": (context) => IncidentList(),
        "/transformer_form": (context) => TransformerForm(),
        "/maintenance_list": (context) => MaintenanceList(),
        "/maintenance_form": (context) => MaintenanceForm(),
        "/incident_form": (context) => IncidentForm(),
        "/incident_list": (context) => IncidentList(),
        "/contact":(context)=>ContactUsPage(),
        "/localisation":(context)=>MapPage(),
      },
      initialRoute: "/logout",
    );      
  }
}
