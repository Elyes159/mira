import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminAssignTeachersPage extends StatelessWidget {
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
                  'Attribuer les Enseignants',
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
                    'Interface d\'Attribution des Enseignants',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildAssignmentItem('Groupe 1', 'Enseignant 1'),
                  _buildAssignmentItem('Groupe 2', 'Enseignant 2'),
                  _buildAssignmentItem('Groupe 3', 'Enseignant 3'),
                  // Ajoutez ici d'autres items d'attribution si nécessaire
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssignmentItem(String className, String teacherName) {
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
          'Enseignant: $teacherName',
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Ajoutez ici la logique pour modifier l'attribution de l'enseignant
          },
        ),
      ),
    );
  }
}
