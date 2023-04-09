// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    final rnd =  Random();

    final List<Color> colores = [
      Colors.red,
      Colors.black,
      Colors.white,
      Colors.green,
      Colors.indigo
    ];

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    final List<Widget> items = List.generate(100, (i) => Container(
      width: double.infinity,
      height: 150,
      color: colores[rnd.nextInt(colores.length)],
    ));

    return  Scaffold(
     body: CustomScrollView(
      slivers: <Widget>[
        const _CustomAppBar(),
        SliverList(delegate: SliverChildListDelegate([
          const _PosterAndTitle(),
          _Overview(),
          _Overview(),
          _Overview()
        ]
          
        ),)
      ],
     )
     );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      //automaticallyImplyLeading: true,
      pinned: true,
      floating: false,
      expandedHeight: 200.0,
      //collapsedHeight: 80.0,
      flexibleSpace:  FlexibleSpaceBar(
      centerTitle: true,
      titlePadding: const EdgeInsets.all(0),
      title: Container(
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        color: Colors.black12,
        child: const Text('SliverAppBar', style: TextStyle(fontSize: 16)),
      ),
      background: const FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        image: NetworkImage('https://via.placeholder.com/500x300'),
        fit: BoxFit.cover,
      ),
  ),
      leading: const BackButton(
        color: Colors.white,
        //onPressed: () =>  Navigator.pushNamed(context, 'home'),
      ),

    );
  }
}

class _PosterAndTitle extends StatelessWidget {

  const _PosterAndTitle();
  
  @override
  Widget build(BuildContext context) {
   final TextTheme textTheme = Theme.of(context).textTheme; 
   
   return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children:  [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
              ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [              
              Text('movie.title', style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('movie.OriginalTitle', style: textTheme.subtitle1, overflow: TextOverflow.ellipsis),
              Row(children: [
                const Icon( Icons.star_outline, size: 20, color: Colors.grey),
                const SizedBox(width: 5,),
                Text('movie-voteAverage', style: textTheme.caption)
              ],)
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child:  Text('Commodo dolore aliqua aliquip culpa do reprehenderit Lorem officia voluptate veniam. Culpa ad elit reprehenderit cupidatat aute adipisicing exercitation excepteur eu exercitation enim. Proident anim magna sunt aute culpa nulla pariatur culpa amet mollit non. Nulla cupidatat est ipsum voluptate dolor velit eu qui irure velit in qui mollit. Do minim non exercitation exercitation veniam officia aute do magna. Reprehenderit enim aute consequat veniam commodo anim laborum.',
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,)
      
    );
  }
}