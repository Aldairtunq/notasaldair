import 'package:flutter/material.dart';
import 'package:notasaldair/models/nota.dart';
import 'package:notasaldair/values/tema.dart';

class HomePage extends StatelessWidget {
  List<Nota> misNotas = [
    Nota(titulo: 'titulo 1', contenido: ' contenido de la nota 1'),
    Nota(titulo: 'titulo 2', contenido: ' contenido de la nota 2'),
    Nota(titulo: 'titulo 3', contenido: ' contenido de la nota 3'),
    Nota(titulo: 'titulo 4', contenido: ' contenido de la nota 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notas APP Aldair'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return NuevaNota();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        body: ListView(
          children: [
            for (Nota nota in misNotas)
              ListTile(
                title: Text(nota.titulo!),
                subtitle: Text(nota.contenido!),
              ),
          ],
        ));
  }
}

class NuevaNota extends StatefulWidget {
  @override
  State<NuevaNota> createState() => _NuevaNotaState();
}

class _NuevaNotaState extends State<NuevaNota> {
  final TextEditingController _tituloController = new TextEditingController();
  final TextEditingController _contenidoController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // height: 300,
      color: blanco,
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: _tituloController,
              decoration: const InputDecoration(labelText: 'Titulo de la nota'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contenido',
              ),
              maxLines: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Nota agregada correctamente'),
                      ),
                    );
                  },
                  child: Text('Aceptar'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contenidoController.dispose();
    this._tituloController.dispose();
    super.dispose();
  }
}
