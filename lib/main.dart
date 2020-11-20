import 'package:Fapps_crud/Screens/crud.screen.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/Accueil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  // await Firebase.initializeApp();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  MyApp({this.savedThemeMode});
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return CircularProgressIndicator();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return AdaptiveTheme(
            light: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.green,
              accentColor: Colors.amber,
              primaryColor: Colors.green,
            ),
            dark: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.amber,
              accentColor: Colors.green,
              primaryColor: Colors.amber,
            ),
            builder: (
              lightTheme,
              darkTheme,
            ) =>
                MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Fapps',
              home: CRUDScreen(),
              theme: lightTheme,
              darkTheme: darkTheme,
            ),
            initial: savedThemeMode ?? AdaptiveThemeMode.system,
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}
