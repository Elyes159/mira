import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParentCanteenPage extends StatelessWidget {
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
                  'Menus de la Cantine',
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
                  _buildCanteenSection('Consulter les Menus', [
                    'Lundi: Spaghetti Bolognaise',
                    'Mardi: Poulet Rôti avec Légumes',
                    'Mercredi: Pizza Margherita',
                    'Jeudi: Hamburger avec Frites',
                    'Vendredi: Poisson Pané avec Riz',
                  ]),
                  _buildCanteenSection('Menus de la Semaine à Venir', [
                    'Lundi: Lasagnes',
                    'Mardi: Steak de Boeuf Grillé',
                    'Mercredi: Poulet au Curry',
                    'Jeudi: Salade Caesar',
                    'Vendredi: Penne à la Carbonara',
                  ]),
                  _buildCanteenSection('Signaler une Allergie Alimentaire', [
                    'Allergie au Gluten',
                    'Allergie aux Arachides',
                    'Allergie au Lactose',
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCanteenSection(String title, List<String> items) {
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
