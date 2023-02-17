import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/inputs_screen.dart';
import 'package:fl_components/screens/slider_screen.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption> [

MenuOption(route: 'listview1', name: 'List View 1', screend: const Listview1Screen(), icon: Icons.list_alt_outlined),
MenuOption(route: 'listview2', name: 'List View 2', screend: const Listview2Screen(), icon: Icons.list),
MenuOption(route: 'alert', name: 'Alerts Screen', screend: const AlertScreen(), icon: Icons.notification_important_outlined),
MenuOption(route: 'card', name: 'Cards Screen', screend: const CardScreen(), icon: Icons.credit_card),
MenuOption(route: 'avatar', name: 'Avatar Screen', screend: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
MenuOption(route: 'animated', name: 'Animated Screen', screend: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
MenuOption(route: 'inputs', name: 'Inputs Screen', screend: const InputsScreen(), icon: Icons.input_outlined),
MenuOption(route: 'slider', name: 'Slider and Check', screend: const SliderScreen(), icon: Icons.photo_size_select_actual_rounded),

];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
  Map<String, Widget Function(BuildContext)> appRoutes = {};
  appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});
  for (var option in menuOption) {
    appRoutes.addAll({ option.route : (BuildContext context) => option.screend });
  }

  return appRoutes;
}
  // static Map<String, Widget Function(BuildContext)> routes =  {
  //   'listview1' : (context) => const Listview1Screen(),
  //   'home'      : (context) => const HomeScreen(),
  //   'listview2' : (context) => const Listview2Screen(), 
  //   'alert'     : (context) => const AlertScreen(),
  //   'card'      : (context) =>  const CardScreen()
  // };

  static Route<dynamic>
      onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
