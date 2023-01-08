import 'package:fl_components/router/app_router.dart';
import 'package:fl_components/theme/app_theme.dart';
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
          title: const Text('Componentes Home Flutter'),
          
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading:  Icon( menuOptions[index].icon, color: AppTheme.primary,),
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
