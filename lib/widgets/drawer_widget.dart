import 'package:transformer_app/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 50,
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

          ...(GlobalParams.menus as List).map((item) {

            return Column(
              children: [
                          ListTile(
                                          title: Text(
                                            '${item['title']}',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black, // Texte en blanc
                                            ),
                                          ),
                                          leading: item['icon'],
                                          trailing: Icon(
                                            Icons.arrow_right,
                                            color: Colors.teal,
                                          ),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                            Navigator.pushNamed(context, "${item['route']}");
                                            //  la navigation vers la page d'accueil de l'application
                                          },
                                          
                          ),
                          Divider(color: Colors.black, height: 0,),
                        ],
            );
          
         
          }),
      
        ],
      ),
    );
  }
}
