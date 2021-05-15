import 'package:flutter/material.dart';
import 'package:gow/constants/colors.dart';
import 'package:gow/providers/game_provider.dart';
import 'package:gow/screens/game_details_screen.dart';
import 'package:gow/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => GameProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GOW',
      theme: ThemeData(
          primarySwatch: appPrimaryColor,
          accentColor: appAccentColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        GameDetailsScreen.routeName: (context) => GameDetailsScreen()
      },
    );
  }
}
