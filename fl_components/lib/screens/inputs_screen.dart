import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();


    final Map<String, String> formValues = {
      'first_name': 'Elias',
      'last_name' : 'torres',
      'email'     : 'eliasto@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin'  
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormkey,
            child: Column(
              children:  [
                  CustomInputField(labelText: 'Nombre',hintText: 'Nombre usuario', formProperty: 'first_name', formValues: formValues,),
                 const SizedBox(height: 30,),
                  CustomInputField(labelText: 'apellido',hintText: 'apellido usuario',formProperty: 'last_name', formValues: formValues),
                 const SizedBox(height: 30,),
                  CustomInputField(labelText: 'email',hintText: 'email usuario', typeInput: TextInputType.emailAddress,formProperty: 'email', formValues: formValues ),
                 const SizedBox(height: 30,),
                  CustomInputField(labelText: 'password',hintText: 'password', obscureText: true, formProperty: 'password', formValues: formValues ),
                 const SizedBox(height: 30,),
                
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'superadmin', child: Text('SuperAdmin')),
                    DropdownMenuItem(value: 'user', child: Text('User')),
                          
                  ], 
                  onChanged: (value) { 
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                   },
                  
                  ),

                ElevatedButton(
                  child: const SizedBox(
                        width: double.infinity,
                        child: Center( child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode());
                    if(!myFormkey.currentState!.validate()){
                      print('formulario no valido');
                      return;
                    } 
                    print(formValues);
                  }, 
                )
              ],
            ),
          )),)
    );
  }
}
