import 'package:fl_components/models/models.dart';
import 'package:fl_components/router/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen
    extends StatelessWidget {
  const HomeScreen(
      {Key? key})
      : super(key: key);

  @override
  Widget
      build(BuildContext context) {

    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
          elevation: 1,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading:  Icon( menuOptions[index].icon,color: Colors.indigo,),
            title:  Text(menuOptions[index].name),
            onTap: () => {
              Navigator.pushNamed(context, menuOptions[index].route)
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
