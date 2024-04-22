import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mira/admin/home_admin.dart';
import 'package:mira/enseignant/home_enseignant.dart';
import 'package:mira/parent/home_parent.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bonjour et Bienvenue à notre plateforme d'éducation \n Vous êtes : ",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            SizedBox(height: 20), // Espacement entre le texte et la liste
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(
                      'Parent',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    leading: Image.asset(
                        'assets/parents.png'), // Remplacez 'assets/parent_image.png' par le chemin de votre image
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Parent()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'Enseignant',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    leading: Image.asset('assets/enseigner.png'),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Ens()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      'Admin',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    leading: Image.asset('assets/admin.png'),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Admin()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
