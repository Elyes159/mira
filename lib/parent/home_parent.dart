import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mira/parent/acces_album.dart';
import 'package:mira/parent/calendrier.dart';
import 'package:mira/parent/chat.dart';
import 'package:mira/parent/gestion_enfant.dart';
import 'package:mira/parent/menu_cantine.dart';
import 'package:mira/parent/rapport.dart';

class ParentHomePage extends StatelessWidget {
  final List<String> announcements = [
    "Réunion de parents le 30 avril",
    "Rapport trimestriel disponible",
    "Excursion scolaire à venir",
    "Rappel : Journée portes ouvertes",
    "Prochain événement culturel"
  ];

  final List<String> events = [
    "Spectacle de fin d'année",
    "Assemblée générale des parents",
    "Fête de l'école",
    "Cérémonie de remise des diplômes",
    "Journée sportive"
  ];

  final List<String> notifications = [
    "Nouveau message de l'administration",
    "Dernière note de votre enfant",
    "Confirmation de paiement reçu",
    "Modification de l'horaire des cours",
    "Rappel : Réunion de parents"
  ];

  final List<String> dates = [
    "25 Avril 2024",
    "29 Mars 2024",
    "15 Mai 2024",
    "12 Avril 2024",
    "10 Juin 2024"
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Accueil Parent",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Bonjour Mr Elyes",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildSectionTitle("Annonces"),
            _buildList(announcements, dates),
            _buildSectionTitle("Événements"),
            _buildList(events, dates),
            _buildSectionTitle("Notifications"),
            _buildList(notifications, dates),
            SizedBox(height: 20.0),
            _buildSectionTitle("Liens Rapides"),
            _buildQuickLinks(),
            SizedBox(height: 20.0),
            _buildSectionTitle("Coordonnées de l'Établissement"),
            _buildContactInfo(),
            SizedBox(height: 20.0),
            _buildSectionTitle("Documents Administratifs"),
            _buildAdministrativeDocuments(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 21, 94, 153),
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,
                color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Calendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Événements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Paramètres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_present,
                color: Color.fromARGB(255, 21, 94, 153)),
            label: 'Paramètres',
          ),
        ],
        currentIndex: 0, // Index de l'élément sélectionné
        selectedItemColor: const Color.fromARGB(
            255, 21, 94, 153), // Couleur de l'élément sélectionné
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentCalendarPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentChatPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentPresencePage()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentAlbumPage()),
            );
          } else if (index == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentCanteenPage()),
            );
          } else if (index == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParentProgressPage()),
            );
          }
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget _buildList(List<String> items, List<String> dates) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.7,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      items[index],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      dates[index],
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildQuickLinks() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildQuickLink("Calendrier Scolaire"),
          _buildQuickLink("Résultats Scolaires"),
          _buildQuickLink("Contactez-nous"),
          _buildQuickLink("FAQ"),
        ],
      ),
    );
  }

  Widget _buildQuickLink(String linkText) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: () {
          // 7ottt el fonction mtaa el bouton houni
        },
        child: Text(
          linkText,
          style: GoogleFonts.poppins(
            color: Colors.blue,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildContactItem("Adresse : 123 Rue de l'École, Ville, Pays"),
          _buildContactItem("Téléphone : +123 456 789"),
          _buildContactItem("Email : info@ecole.com"),
        ],
      ),
    );
  }

  Widget _buildContactItem(String contactInfo) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        contactInfo,
        style: GoogleFonts.poppins(
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildAdministrativeDocuments() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildDocumentLink("Règlement Intérieur"),
          _buildDocumentLink("Formulaire d'Inscription"),
          _buildDocumentLink("Calendrier Scolaire"),
          _buildDocumentLink("Liste des Fournitures"),
        ],
      ),
    );
  }

  Widget _buildDocumentLink(String documentName) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: () {
          // 7ottt el fonction mtaa el bouton houni
        },
        child: Row(
          children: <Widget>[
            Icon(
              Icons.file_present,
              color: Colors.blue,
            ),
            SizedBox(width: 10.0),
            Text(
              documentName,
              style: GoogleFonts.poppins(
                color: Colors.blue,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
