import 'package:fl_components/widgets/widgets.dart';
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
            children: const [
               CustomInputField(labelText: 'Nombre',hintText: 'Nombre usuario'),
               SizedBox(height: 30,),
               CustomInputField(labelText: 'apellido',hintText: 'apellido usuario'),
               SizedBox(height: 30,),
               CustomInputField(labelText: 'email',hintText: 'email usuario', typeInput: TextInputType.emailAddress ),
               SizedBox(height: 30,),
               CustomInputField(labelText: 'password',hintText: 'password', obscureText: true, ),
              
            ],
          )),)
    );
  }
}
