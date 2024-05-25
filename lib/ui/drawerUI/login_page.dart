import 'package:transformer_app/ui/drawerUI/register_page.dart';
import 'package:transformer_app/ui/reset_password.dart';
import 'package:flutter/material.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.person,
                size: 60.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Se connecter avec:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.g_mobiledata),
                    color: Colors.white,
                    onPressed: () {
                      // Ajoutez votre logique pour se connecter avec Google ici
                    },
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.facebook),
                    color: Colors.white,
                    onPressed: () {
                      // Ajoutez votre logique pour se connecter avec Facebook ici
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),

            Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    Text(
      'Mot de passe oublié ?',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
    ),
    TextButton(
      onPressed: () {
        // Ajoutez votre logique pour la réinitialisation du mot de passe ici
        Navigator.of(context).pop();
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>ResetPasswordApp())
        );
      },
      child: Text(
        'Réinitialiser',
        style: TextStyle(
          color: Colors.teal,
          fontSize: 16.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  ],
),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Pas de compte ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(width: 5.0),
                TextButton(
                  onPressed: () {
                    // Ajoutez votre logique pour la page d'inscription ici
                    Navigator.of(context).pop();
                    Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    'Inscrivez-vous ici',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).pop();    
                  Navigator.of(context).pushNamed("/home");          },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
