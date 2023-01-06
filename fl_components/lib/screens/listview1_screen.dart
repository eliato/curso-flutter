import 'package:flutter/material.dart';

class Listview1Screen
    extends StatelessWidget {
  const Listview1Screen(
      {Key? key})
      : super(key: key);

  final options =
      const [
    'megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View tipo 1'),
          elevation: 3,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  onTap: () {},
                )),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
