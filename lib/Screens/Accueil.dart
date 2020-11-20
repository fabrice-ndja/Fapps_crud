import 'package:Fapps_crud/Pages/Connexion.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MonAccueil extends StatelessWidget {
  final bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: Theme.of(context),
      duration: Duration(milliseconds: 200),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FAPPS CRUD",
            style: GoogleFonts.lato(
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              icon: isChanged
                  ? Icon(Icons.brightness_2)
                  : Icon(Icons.brightness_4),
              onPressed: () {
                AdaptiveTheme.of(context).toggleThemeMode();
              },
            ),
          ],
        ),
        body: SizedBox.expand(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConnexionPage(),
          ],
        )),
      ),
    );
  }
}
