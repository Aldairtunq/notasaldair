import 'package:flutter/material.dart';
import 'package:notasaldair/services/usersservices.dart';
import 'package:notasaldair/values/tema.dart';

class ModalNotaNueva extends StatefulWidget {
  const ModalNotaNueva({super.key});

  @override
  State<ModalNotaNueva> createState() => _ModalNotaNuevaState();
}

class _ModalNotaNuevaState extends State<ModalNotaNueva> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _contenidoController = TextEditingController();
  final GlobalKey<FormState> _formulariokey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // height: 300,
        color: blanco,
        child: Form(
          key: _formulariokey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _tituloController,
                  decoration:
                      const InputDecoration(labelText: 'Titulo de la nota'),
                  //

                  validator: (String? dato) {
                    if (dato!.isEmpty) {
                      return 'este campo es requerido';
                    }
                  },
                ),
                TextFormField(
                  controller: _contenidoController,
                  decoration: const InputDecoration(
                    labelText: 'Contenido',
                  ),
                  maxLines: 10,
                  validator: (String? dato) {
                    if (dato!.isEmpty) {
                      return 'este campo es requerido';
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (_formulariokey.currentState!.validate()) {
                          UserServices().saveNotas(_tituloController.text,
                              _contenidoController.text);

                          //tood
                          //agregar esto a la base de datos
                          //regresar alla pantalla anterior
                          //mostrar un mensaje al usuario

                        }
                        //  Navigator.pop(context);
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //    SnackBar(
                        //    content: Text('Nota agregada correctamente'),
                        //   ),
                        //   );
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
        ),
      ),
    );
  }
}
