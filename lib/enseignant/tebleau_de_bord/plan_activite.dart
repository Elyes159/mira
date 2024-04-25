import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivitiesPage extends StatelessWidget {
  // Exemples d'activités
  final List<String> activities = [
    "Cours de Mathématiques",
    "Séance de Sport",
    "Atelier d'Art",
    "Conférence sur les Sciences",
    "Sortie scolaire au musée",
    "Débat sur l'Histoire",
    "Club de Lecture",
    "Projet en Équipe",
    "Activité Communautaire",
    "Présentation de Projets"
  ];

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
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text(
                      "Planning des Activités",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: activities
                    .map((activity) => _buildActivityItem(activity))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(String activityName) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        title: Text(
          activityName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        onTap: () {
          // Ajoutez ici le code pour gérer le tap sur l'activité
        },
      ),
    );
  }
}
