import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mira/admin/login_admin.dart';
import 'package:mira/enseignant/se_connecter.dart';
import 'package:mira/parent/home_parent.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 94, 153),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text(
                      "Bonjour et Bienvenue à notre plateforme d'éducation \n Vous êtes : ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  _buildUserType(
                    context,
                    'Parent',
                    'assets/parents.png',
                    () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Parent()),
                      );
                    },
                    'Accédez au tableau de bord des parents pour suivre le progrès de vos enfants et communiquer avec leurs enseignants.',
                  ),
                  SizedBox(height: 20),
                  _buildUserType(
                    context,
                    'Enseignant',
                    'assets/enseigner.png',
                    () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Ens()),
                      );
                    },
                    'Connectez-vous pour accéder à vos cours, gérer les devoirs et communiquer avec vos élèves et leurs parents.',
                  ),
                  SizedBox(height: 20),
                  _buildUserType(
                    context,
                    'Admin',
                    'assets/admin.png',
                    () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Admin()),
                      );
                    },
                    'Accédez au tableau de bord de l\'administration pour gérer les utilisateurs, les cours et les ressources de la plateforme.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserType(BuildContext context, String type, String imagePath,
      VoidCallback? onTap, String description) {
    return ListTile(
      title: Text(
        type,
        style: GoogleFonts.poppins(fontSize: 20),
      ),
      subtitle: Text(
        description,
        style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
      ),
      leading: Image.asset(imagePath),
      onTap: onTap,
    );
  }
}
