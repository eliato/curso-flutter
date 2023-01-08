import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen
    extends StatelessWidget {
  const CardScreen(
      {Key? key})
      : super(key: key);

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Card Wiget'),
      ),
      body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Card(
          child: Column(

            children: const[
              ListTile(
              leading: Icon(Icons.phone_android, color: AppTheme.primary),  
              title: Text('titulo card'),
              subtitle: Text('Anim cupidatat pariatur quis officia anim excepteur pariatur pariatur deserunt Lorem ullamco sint.'),
              )

              ],

            ),
          )
        ],  
    )
    );
  }
}
