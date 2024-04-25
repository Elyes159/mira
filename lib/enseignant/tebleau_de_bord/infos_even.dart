import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: 2020,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Informations sur les événements",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: _buildEventTable([
                  {
                    "Titre": "Conférence sur l'éducation numérique",
                    "Date début": "25 Avril 2024",
                    "Date fin": "27 Avril 2024",
                    "Lieu": "Centre de conférence XYZ",
                    "Organisateur": "Association pour l'éducation numérique",
                    "Description":
                        "Une conférence visant à promouvoir l'utilisation des technologies numériques dans l'éducation."
                  },
                  {
                    "Titre": "Atelier sur l'intelligence artificielle",
                    "Date début": "30 Avril 2024",
                    "Date fin": "1 Mai 2024",
                    "Lieu": "Salle de réunion ABC",
                    "Organisateur": "Société d'intelligence artificielle",
                    "Description":
                        "Un atelier pratique pour explorer les bases de l'intelligence artificielle et ses applications dans l'éducation."
                  },
                  {
                    "Titre": "Forum sur l'éducation inclusive",
                    "Date début": "5 Mai 2024",
                    "Date fin": "7 Mai 2024",
                    "Lieu": "Centre communautaire XYZ",
                    "Organisateur": "Organisation pour l'éducation inclusive",
                    "Description":
                        "Un forum pour discuter des pratiques et des politiques visant à promouvoir une éducation inclusive pour tous les apprenants."
                  },
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventTable(List<Map<String, String>> events) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('Titre')),
        DataColumn(label: Text('Date début')),
        DataColumn(label: Text('Date fin')),
        DataColumn(label: Text('Lieu')),
        DataColumn(label: Text('Organisateur')),
        DataColumn(label: Text('Description')),
      ],
      rows: events.map((event) {
        return DataRow(cells: [
          DataCell(Text(event['Titre'] ?? '')),
          DataCell(Text(event['Date début'] ?? '')),
          DataCell(Text(event['Date fin'] ?? '')),
          DataCell(Text(event['Lieu'] ?? '')),
          DataCell(Text(event['Organisateur'] ?? '')),
          DataCell(Text(event['Description'] ?? '')),
        ]);
      }).toList(),
    );
  }
}
