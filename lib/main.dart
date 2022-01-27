import 'package:flutter/material.dart';
import 'package:pelicula/providers/movies_provider.dart';
import 'package:pelicula/screens/screens.dart';
import 'package:pelicula/themes/app_themes.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false)
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Peliculas',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'details': (_) => const DetailsScreen()
        },
        theme: AppThemes.lightTheme);
  }
}
