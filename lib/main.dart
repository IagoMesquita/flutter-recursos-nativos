import 'package:flutter/material.dart';
import 'package:recusos_nativos/provider/great_places.dart';
import 'package:recusos_nativos/screens/place_form_screen.dart';
import 'package:recusos_nativos/screens/places_list_sceen.dart';
import 'package:recusos_nativos/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Recursos Nativos',
        debugShowCheckedModeBanner: false,
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber
          )
        ),
        // theme: ThemeData(
        //    primarySwatch: Colors.indigo,
        //    accentColor: Colors.amber
        // ),
        home: const PlacesListScreen(),
              routes: {
          AppRoutes.PLACE_FORM: (context) =>  const PlaceFormScreen(),
        },
      ),
    );
  }
}
