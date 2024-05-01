import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentCalendarPage extends StatefulWidget {
  @override
  _ParentCalendarPageState createState() => _ParentCalendarPageState();
}

class _ParentCalendarPageState extends State<ParentCalendarPage> {
  late PageController _pageController;
    // ignore: unused_field

  int _currentPage = DateTime.now().month - 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<DateTime> highlightedDates = [
    DateTime.utc(2024, 7, 15), // 15th July 2024
    DateTime.utc(2024, 12, 23), // 23rd December 2024
    DateTime.utc(2024, 4, 12), // 12th April 2024
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
                  'Calendrier',
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
              child: TableCalendar(
                calendarFormat: CalendarFormat.month,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                ),
                calendarStyle: CalendarStyle(
                  todayTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                availableCalendarFormats: {CalendarFormat.month: 'Month'},
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2024, 1, 1), // Update the year as needed
                lastDay:
                    DateTime.utc(2024, 12, 31), // Update the year as needed
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildEventSection('Activités Planifiées', [
                    'Réunion Parents-Enseignants',
                    'Excursion à la Musée',
                    'Fête de l\'École',
                  ]),
                  _buildEventSection('Vacances Scolaires', [
                    'Vacances d\'Été: 15 juillet - 15 septembre',
                    'Vacances de Noël: 23 décembre - 6 janvier',
                    'Vacances de Printemps: 12 avril - 26 avril',
                  ]),
                  _buildEventSection('Événements Spéciaux', [
                    'Journée Portes Ouvertes',
                    'Spectacle de Fin d\'Année',
                    'Assemblée Générale des Parents',
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventSection(String title, List<String> events) {
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: events.map((event) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                event,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
