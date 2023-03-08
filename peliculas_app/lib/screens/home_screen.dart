import 'package:flutter/material.dart';
import 'package:peliculas_app/wigets/wigets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon( Icons.search_outlined)
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //tarjeta principal
            CardSwiper(),
      
            //slider de peliculas
            MovieSlider()
        ],),
      )
    ); 
  }
}