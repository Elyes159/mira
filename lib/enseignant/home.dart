import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mira/enseignant/tebleau_de_bord/classes.dart';
import 'package:mira/enseignant/tebleau_de_bord/eleves.dart';
import 'package:mira/enseignant/tebleau_de_bord/infos_even.dart';
import 'package:mira/enseignant/tebleau_de_bord/msg_non_lus.dart';
import 'package:mira/enseignant/tebleau_de_bord/plan_activite.dart';
import 'package:mira/enseignant/tebleau_de_bord/tache_assigne.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
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
                      "Tableau de Bord",
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
                children: <Widget>[
                  _buildSectionTitleWithButton(
                    title: "Infos Événements",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventInfoPage(),
                        ),
                      );
                    },
                  ),
                  _buildInfoItem("Nombre d'événements", "8"),
                  _buildInfoItem("Date prochaine événement", "25 Avril 2024"),
                  SizedBox(height: 20.0),
                  _buildSectionTitleWithButton(
                    title: "Tâches Assignées",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => AssignedTasksPage()),
                      );
                    },
                  ),
                  _buildInfoItem("Tâches en attente", "5"),
                  _buildInfoItem("Tâches complétées", "3"),
                  SizedBox(height: 20.0),
                  _buildSectionTitleWithButton(
                    title: "Messages Non Lus",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => UnreadMessagesPage()),
                      );
                    },
                  ),
                  _buildInfoItem("Messages non lus", "2"),
                  SizedBox(height: 20.0),
                  _buildSectionTitleWithButton(
                    title: "Classes",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ClassesPage()),
                      );
                    },
                  ),
                  _buildInfoItem("Nombre de classes", "3"),
                  SizedBox(height: 20.0),
                  _buildSectionTitleWithButton(
                    title: "Liste des Élèves",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StudentsPage()),
                      );
                    },
                  ),
                  _buildInfoItem("Nombre d'élèves", "30"),
                  SizedBox(height: 20.0),
                  _buildSectionTitleWithButton(
                    title: "Plan des Activités",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ActivitiesPage()),
                      );
                    },
                  ),
                  _buildInfoItem("Activités prévues", "Sport, Art, Sciences"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitleWithButton(
      {required String title, required VoidCallback onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Row(
            children: [
              Text(
                'Voir tout',
                style: GoogleFonts.poppins(color: Colors.blue),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return ListTile(
      title: Text(
        label,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      ),
      trailing: Text(
        value,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
