import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mira/admin/attribuer_ens.dart';
import 'package:mira/admin/chat.dart';
import 'package:mira/admin/gestion_cg.dart';
import 'package:mira/admin/inscri_enfant.dart';

class AdminDashboardPage extends StatelessWidget {
  final Map<String, int> statistics = {
    'Enfants': 250,
    'Présences': 180,
    'Événements': 20,
    'Paiements': 200,
    'Non Paiements': 50,
  };

  @override
  Widget build(BuildContext context) {
    final List<Widget> statisticWidgets = statistics.entries.map((entry) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Text(
              '${entry.key}: ',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${entry.value}',
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }).toList();

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
                  'Dashboard Statistique',
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
                    'Graphique des Présences',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: statistics.entries.map((entry) {
                              final index =
                                  statistics.keys.toList().indexOf(entry.key);
                              return FlSpot(
                                  index.toDouble(), entry.value.toDouble());
                            }).toList(),
                            isCurved: true,
                            color: Colors.blue,
                            barWidth: 4,
                            isStrokeCapRound: true,
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        borderData: FlBorderData(show: true),
                        minX: 0,
                        maxX: statistics.length.toDouble() - 1,
                        minY: 0,
                        maxY: statistics.values
                            .reduce((a, b) => a > b ? a : b)
                            .toDouble(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ...statisticWidgets,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon:
                Icon(Icons.dashboard, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,
                color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Calendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Inscriptions',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.show_chart, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Statistiques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining,
                color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Cantine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Rapports',
          ),
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminInscriptionsPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminClassesPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AdminAssignTeachersPage()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminChatPage()),
            );
          }
        },
      ),
    );
  }
}
