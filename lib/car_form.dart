import 'package:flutter/material.dart';

class CarForm extends StatefulWidget {
  @override
  _CarFormState createState() => _CarFormState();
}

class _CarFormState extends State<CarForm> {
  final _formKey = GlobalKey<FormState>();
  // Aquí puedes definir los controladores para cada campo del formulario
  TextEditingController _brandController = TextEditingController();
  TextEditingController _modelController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  // Más controladores según sea necesario

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _brandController,
              decoration: const InputDecoration(
                labelText: 'Brand',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the brand';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _modelController,
              decoration: const InputDecoration(
                labelText: 'Model',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the model';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _yearController,
              decoration: const InputDecoration(
                labelText: 'Year',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the year';
                }
                return null;
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Aquí puedes hacer lo que quieras con los datos del formulario
            // Por ejemplo, puedes enviarlos a una base de datos
            // o a una API
            // o simplemente mostrarlos en un diálogo
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Car data'),
                  content: Text(
                    'Brand: ${_brandController.text}\n'
                    'Model: ${_modelController.text}\n'
                    'Year: ${_yearController.text}\n',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
