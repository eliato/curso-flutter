import 'package:flutter/material.dart';



class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold))
            ),
          const SizedBox( height: 5),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => _MoviePoster()
              
              ),
          )
          
        ]),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children:  [
          GestureDetector(
            onTap: () => Navigator.popAndPushNamed(
              context, 'details', arguments: 'movies-details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder:  AssetImage('assets/no-image.jpg'), 
                image:  NetworkImage('https://via.placeholder.com/300x400'),
                width: 130,
                height: 190,
                fit: BoxFit.cover,
                ),
            ),
          ),
            const SizedBox(
              height: 5,
            ),
            const Text('Startwars', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}