import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentProgressPage extends StatelessWidget {
  final List<Map<String, List<String>>> progressSections = [
    {
      'Accès aux Rapports & Évaluations': [
        'Rapport Trimestriel - 1er Trimestre',
        'Rapport Trimestriel - 2ème Trimestre',
        'Rapport Trimestriel - 3ème Trimestre',
      ]
    },
    {
      'Accès aux Commentaires Enseignant': [
        'Commentaires sur le Comportement',
        'Commentaires sur les Performances Académiques',
        'Commentaires sur les Progrès Réalisés',
      ]
    }
  ];

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
                  'Rapport de Progrès',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: progressSections
                    .map((section) => _buildProgressSection(section))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressSection(Map<String, List<String>> section) {
    String title = section.keys.first;
    List<String> items = section.values.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((item) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '- $item',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
