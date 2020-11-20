import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnexionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            'HELLO',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'ICI',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '.',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  fontSize: 40,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: "ADRESSE EMAIL",
                labelStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                suffixIcon: Icon(Icons.email),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: "MOT DE PASSE",
                labelStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                suffixIcon: Icon(Icons.lock),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "Mot de passe oublié?",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 40.0,
            child: Material(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
              child: Center(child: Text("CONNEXION",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                  ,
                ),
              ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
