// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return const Scaffold(
     body: CustomScrollView(
      slivers: [
        _CustomAppBar()
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
      leading: const  BackButton(
        color: Colors.white,
      
      ),

    );
  }
}