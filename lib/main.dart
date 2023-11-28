import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/screens/place_datail_screen.dart';
import 'package:great_places/screens/place_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM: (context) => const PlaceFormScreen(),
          AppRoutes.PLACE_DETAIL: (context) => const PlaceDatailScreen(),
        },
      ),
    );
  }
}
