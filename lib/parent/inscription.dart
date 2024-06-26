import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mira/enseignant/se_connecter.dart';
import 'package:mira/parent/se_connecter.dart';

class PrentInscriptionPage extends StatefulWidget {
  @override
  _InscriptionPageState createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<PrentInscriptionPage> {
  // Déclaration des contrôleurs pour les champs de saisie
  TextEditingController _nomController = TextEditingController();
  TextEditingController _prenomController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height *
                  0.3, // Ajustez la hauteur selon vos besoins
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 94, 153),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/parents.png',
                      height: 80,
                    ), // Remplacez 'assets/your_image.png' par le chemin de votre image
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bienvenue ",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Inscrivez-vous pour continuer",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 18))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: _nomController,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _prenomController,
                      decoration: InputDecoration(
                        labelText: 'Prénom',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Bouton d'inscription
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          // Ajoutez ici le code pour gérer l'inscription
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 20),
                            Text(
                              'Inscription',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        color: const Color.fromARGB(255, 21, 94, 153),
                        height: 50,
                        minWidth: 200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Vous avez déjà un compte ?",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ParentLogin()),
                          );
                        },
                        child: Text(
                          "Connectez-vous",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
