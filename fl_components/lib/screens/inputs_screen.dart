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
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print( 'value: $value');
                },
                validator: (value) {
                 if(value == null ) return 'este campo es requerido';
                 return value.length < 3 ? 'Minimo de 3 letras' : null; 
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'solo letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon( Icons.group_outlined),
                 // prefixIcon: Icon(Icons.verified_user_rounded)
                 icon: Icon( Icons.assignment_ind_outlined),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                 ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                 )
                ),
              )
            ],
          )),)
    );
  }
}