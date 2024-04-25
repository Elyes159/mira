import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssignedTasksPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {"task": "Réviser le chapitre 5", "dueDate": "25 Avril 2024"},
    {"task": "Préparer le rapport de projet", "dueDate": "28 Avril 2024"},
    {
      "task": "Rédiger l'article pour la conférence",
      "dueDate": "30 Avril 2024"
    },
    {"task": "Préparer la présentation PowerPoint", "dueDate": "2 Mai 2024"},
    {
      "task": "Finaliser les documents pour la réunion",
      "dueDate": "5 Mai 2024"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                    'Tâches Assignées',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 24.0),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return _buildTaskItem(
                  tasks[index]['task']!,
                  tasks[index]['dueDate']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(String taskName, String dueDate) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          title: Text(
            taskName,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          subtitle: Text(
            "Date d'échéance: $dueDate",
            style: GoogleFonts.poppins(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
