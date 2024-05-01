import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentPresencePage extends StatelessWidget {
  // Exemples de listes pour chaque section
  final List<String> suivisPresences = [
    'Enfant présent le 21 avril',
    'Enfant absent le 22 avril'
  ];
  final List<String> absencesPrevueImprevue = [
    'Absence prévue le 25 avril',
    'Absence imprévue le 28 avril'
  ];
  final List<String> notificationsRetard = [
    'Retard signalé le 20 avril',
    'Pas de retard signalé cette semaine'
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
                  'Gestion de la Présence',
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
                children: <Widget>[
                  _buildPresenceSection('Suivi des Présences', suivisPresences),
                  _buildPresenceSection(
                      'Signaler une Absence Prévue ou Imprévue',
                      absencesPrevueImprevue),
                  _buildPresenceSection(
                      'Notification en cas de Retard', notificationsRetard),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPresenceSection(String title, List<String> items) {
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
                  item,
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
