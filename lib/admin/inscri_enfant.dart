import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminInscriptionsPage extends StatefulWidget {
  @override
  _AdminInscriptionsPageState createState() => _AdminInscriptionsPageState();
}

class _AdminInscriptionsPageState extends State<AdminInscriptionsPage> {
  final TextEditingController _childNameController = TextEditingController();

  @override
  void dispose() {
    _childNameController.dispose();
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
                  'Gestion des Inscriptions',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
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
                    'Interface de Gestion des Inscriptions',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildInscriptionItem('Nouvel Enfant 1'),
                  _buildInscriptionItem('Nouvel Enfant 2'),
                  _buildInscriptionItem('Nouvel Enfant 3'),
                  _buildInscriptionItem('Nouvel Enfant 4'),
                  // Ajoutez ici d'autres items d'inscription si nécessaire
                  SizedBox(height: 20),
                  _buildNewChildForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInscriptionItem(String childName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          childName,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Détails de l\'enfant $childName',
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Ajoutez ici la logique pour modifier l'inscription
          },
        ),
      ),
    );
  }

  Widget _buildNewChildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Inscrire un Nouvel Enfant',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _childNameController,
          decoration: InputDecoration(
            labelText: 'Nom de l\'enfant',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Ajoutez ici la logique pour soumettre le formulaire et inscrire un nouvel enfant
            String childName = _childNameController.text;
            // Effectuez ici les actions nécessaires avec le nom de l'enfant saisi
            print('Nouvel enfant inscrit: $childName');
          },
          child: Text('Inscrire'),
        ),
      ],
    );
  }
}
