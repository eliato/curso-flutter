import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return const Scaffold(
     body: CustomScrollView(
      slivers: <Widget>[
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
    return const SliverAppBar(
      automaticallyImplyLeading: true,
      pinned: false,
      snap: false,
      expandedHeight: 160.0,
      collapsedHeight: 80.0,
      flexibleSpace:  FlexibleSpaceBar(
    title: Text('SliverAppBar'),
    background: FlutterLogo(),
  ),
  leading: BackButton(
    color: Colors.white,
  ),
    );
  }
}