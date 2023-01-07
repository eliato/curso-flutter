import 'package:flutter/material.dart';

class HomeScreen
    extends StatelessWidget {
  const HomeScreen(
      {Key? key})
      : super(key: key);

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
          elevation: 1,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.access_time_filled_outlined),
            title: const Text('Ruta'),
            onTap: () => {
              Navigator.pushNamed(context, 'listview12')
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10,
        ));
  }
}
