import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'ingrese su nombre',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print( 'value: $value');
                },
              )
            ],
          )),)
    );
  }
}