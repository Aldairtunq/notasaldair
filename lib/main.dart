import 'package:flutter/material.dart';
import 'package:notasaldair/pages/pages.dart';
import 'package:notasaldair/values/tema.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      'nuevo': (context) => const ModalNotaNueva(),
    }, theme: miTema(context), title: 'Notas Ap', home: HomePage());
  }
}
//5:43


//100 49