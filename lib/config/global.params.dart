import 'package:flutter/material.dart';

class GlobalParams{
  static List <Map<String, dynamic>> menus=[

      {
        "title":"Accueil", "icon":Icon(Icons.home_outlined, color: Colors.teal), "route":"/home"
      },
      {
        "title":"Localisation", "icon":Icon(Icons.map_outlined, color: Colors.teal), "route":"/localisation"
      },
      {
        "title":"Liste des Transformateurs", "icon":Icon(Icons.transform_outlined, color: Colors.teal,), "route":"/transformers"
      },
      {
        "title":"Signaler Une Panne", "icon":Icon(Icons.report_problem_outlined, color: Colors.teal), "route":"/incident_form"

      },
      {
        "title":"Suivie des pannes", "icon":Icon(Icons.track_changes_outlined, color: Colors.teal), "route":"/incident_list"

      },
      {
        "title":"Paramètres", "icon":Icon(Icons.settings_outlined, color: Colors.teal),"route":"/setting"
      },
      {
        "title":"A propos de Nous", "icon":Icon(Icons.info_outlined, color: Colors.teal), "route":"/about"

      },
      {
        "title":"Aide","icon":Icon(Icons.help_outlined, color: Colors.teal), "route":"/help"
      },
      {
        "title":"Statistiques", "icon":Icon(Icons.bar_chart_outlined, color: Colors.teal), "route":"/statistic"
      },
      {
        "title":"Déconexion", "icon":Icon(Icons.logout, color: Colors.red), "route":"/logout"

      }
  ];
}