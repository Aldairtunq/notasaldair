import 'package:notasaldair/models/nota.dart';

class UserServices {
  Future<List<Nota>> getNotas() async {
    List<Nota> misNotas = [
      Nota(titulo: 'Titulo 1', contenido: 'contenido de la nota  numero 1'),
      Nota(titulo: 'Titulo 2', contenido: 'contenido de la nota  numero 2'),
      Nota(titulo: 'Titulo 3', contenido: 'contenido de la nota  numero 3'),
      Nota(titulo: 'Titulo 4', contenido: 'contenido de la nota  numero 4'),
    ];
    return misNotas;
  }

  saveNotas(String titulo, String contenido) {}
}
