import 'package:flutter/material.dart';
import 'package:notasaldair/models/nota.dart';
import 'package:notasaldair/services/usersservices.dart';
import 'package:notasaldair/pages/new_nota.dart';
import 'package:notasaldair/values/tema.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notas APP Aldairrr'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'nuevo');
            //showModalBottomSheet(
            //  context: context,
            //  builder: (BuildContext context) {
            ////     return NuevaNota();
            //  },
            //);
          },
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder(
          future: UserServices().getNotas(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            List misnotas = snapshot.data ?? [];
            return ListView(
              children: [
                for (Nota nota in misnotas) ListTile(),
              ],
            );
          },
        ));
  }
}
