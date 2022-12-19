import 'package:flutter/material.dart';

const Color primary = Color(0xff1D3354);
const Color secundary = Color(0xff9ED8DB);
const Color blanco = Color(0xffE9FFF9);
const Color Azul = Color(0xff467599);
const Color amarillo = Color(0xffF3DE8A);
const Color rojo = Color(0xffD64045);

miTema(BuildContext con) {
  return ThemeData(
    primaryColor: primary,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow).copyWith(
      //colorsheme.fromSwatch
      secondary: Colors.green,
    ),
  );
}
