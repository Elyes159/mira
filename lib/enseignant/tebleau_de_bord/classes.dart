import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassesPage extends StatelessWidget {
  // Exemples de classes
  final List<Map<String, String>> classes = [
    {"name": "Mathématiques", "professor": "Professeur: M. Dupont"},
    {"name": "Histoire", "professor": "Professeur: Mme. Martin"},
    {"name": "Science", "professor": "Professeur: M. Smith"},
    {"name": "Langue Française", "professor": "Professeur: Mme. Dubois"},
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
                      "Les Classes",
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
                children: classes
                    .map((classInfo) => _buildClassCard(
                        classInfo['name']!, classInfo['professor']!))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassCard(String className, String professor) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        title: Text(
          className,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        subtitle: Text(
          professor,
          style: GoogleFonts.poppins(
            fontSize: 16.0,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: const Color.fromARGB(255, 21, 94, 153),
        ),
        onTap: () {
          // Ajoutez ici le code pour gérer le tap sur la carte de classe
        },
      ),
    );
  }
}
