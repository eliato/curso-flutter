import 'package:flutter/material.dart';
import 'package:peliculas_app/wigets/card_swiper.dart';

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
      body: Column(
        children: const [
          CardSwiper()
      ],)
    ); 
  }
}