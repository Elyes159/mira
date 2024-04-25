import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey, // Couleur du texte du label
                  fontSize: 18.0, // Taille de la police du texte du label
                  // Poids de la police du texte du label
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Bords arrondis
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.grey, // Couleur du texte du label
                  fontSize: 18.0, // Taille de la police du texte du label
                  // Poids de la police du texte du label
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Valeur du rayon pour arrondir les bords
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Admin()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  // Forme du bouton
                  borderRadius: BorderRadius.circular(10.0), // Bords arrondis
                ),
              ),
              child: Container(
                // Utilisation d'un conteneur pour ajouter du padding autour du texte
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(fontSize: 16.0), // Style du texte
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
