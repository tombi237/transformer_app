import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contactez-nous',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nous Contacter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Adresse:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '123 Rue de l\'Exemple, Ville, Pays',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Téléphone:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '+123 456 789',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Email:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'contact@example.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Envoyez-nous un message',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ContactForm(),
          ],
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'Nom',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez saisir votre nom';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez saisir votre adresse email';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.message),
              labelText: 'Message',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez saisir votre message';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          Flexible( // Utilisation de Flexible
            child: ElevatedButton.icon(
              onPressed: () {
                // Logique d'envoi de message
              },
              icon: Icon(Icons.send),
              label: SizedBox(), // Pas de texte
            ),
          ),
        ],
      ),
    );
  }
}