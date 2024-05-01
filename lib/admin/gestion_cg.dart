import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminClassesPage extends StatefulWidget {
  @override
  _AdminClassesPageState createState() => _AdminClassesPageState();
}

class _AdminClassesPageState extends State<AdminClassesPage> {
  final TextEditingController _classNameController = TextEditingController();

  @override
  void dispose() {
    _classNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 94, 153),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Gestion des Classes ou Groupes',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interface de Gestion des Classes ou Groupes',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildClassItem('Groupe 1', '5 - 7 ans'),
                  _buildClassItem('Groupe 2', '8 - 10 ans'),
                  _buildClassItem('Groupe 3', '11 - 13 ans'),
                  // Ajoutez ici d'autres items de classe si nécessaire
                  SizedBox(height: 20),
                  _buildNewClassForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassItem(String className, String ageRange) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          className,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Âge: $ageRange',
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Ajoutez ici la logique pour modifier la classe
          },
        ),
      ),
    );
  }

  Widget _buildNewClassForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Créer une Nouvelle Classe ou Groupe',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _classNameController,
          decoration: InputDecoration(
            labelText: 'Nom de la Classe ou du Groupe',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Ajoutez ici la logique pour soumettre le formulaire et créer une nouvelle classe
            String className = _classNameController.text;
            // Effectuez ici les actions nécessaires avec le nom de la classe saisi
            print('Nouvelle classe créée: $className');
          },
          child: Text('Créer'),
        ),
      ],
    );
  }
}
