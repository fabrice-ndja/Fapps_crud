import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'Screens/Accueil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  MyApp({this.savedThemeMode});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
        home: MonAccueil(),
        theme: lightTheme,
        darkTheme: darkTheme,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
    );
  }
}
