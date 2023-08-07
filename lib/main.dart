import 'package:flutter/material.dart';
import 'package:recusos_nativos/screens/place_form_screen.dart';
import 'package:recusos_nativos/screens/places_list_sceen.dart';
import 'package:recusos_nativos/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recursos Nativos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ).copyWith(),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (context) =>  const PlaceFormScreen(),
      },
    );
  }
}
