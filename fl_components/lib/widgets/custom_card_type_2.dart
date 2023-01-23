import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardType2 extends StatelessWidget {

  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:  [
       const FadeInImage(
          image: NetworkImage('https://zurich.swissphotoclub.com/wp-content/uploads/2019/06/Matterhorn-Stellisee-I-1.jpg'), 
          placeholder: AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 210,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Montanaias') ,
          )
      ]),
    );
  }
}