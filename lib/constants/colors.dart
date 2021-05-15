import 'package:flutter/material.dart';

//Application Primary color
Map<int, Color> _primaryColor = {
  50: Color.fromRGBO(17,17,17, .1),
  100: Color.fromRGBO(17,17,17, .2),
  200: Color.fromRGBO(17,17,17, .3),
  300: Color.fromRGBO(17,17,17, .4),
  400: Color.fromRGBO(17,17,17, .5),
  500: Color.fromRGBO(17,17,17, .6),
  600: Color.fromRGBO(17,17,17, .7),
  700: Color.fromRGBO(17,17,17, .8),
  800: Color.fromRGBO(17,17,17, .9),
  900: Color.fromRGBO(17,17,17, 1),
};
MaterialColor appPrimaryColor = MaterialColor(0xFF111111, _primaryColor);
//Application Accent color
Map<int, Color> _accentColor = {
  50: Color.fromRGBO(140,18,34, .1),
  100: Color.fromRGBO(140,18,34, .2),
  200: Color.fromRGBO(140,18,34, .3),
  300: Color.fromRGBO(140,18,34, .4),
  400: Color.fromRGBO(140,18,34, .5),
  500: Color.fromRGBO(140,18,34, .6),
  600: Color.fromRGBO(140,18,34, .7),
  700: Color.fromRGBO(140,18,34, .8),
  800: Color.fromRGBO(140,18,34, .9),
  900: Color.fromRGBO(140,18,34, 1),
};
MaterialColor appAccentColor = MaterialColor(0xFF8C1222, _accentColor);