import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      
      ),
    );
  }
}