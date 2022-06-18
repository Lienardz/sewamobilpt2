import 'package:flutter/material.dart';
import 'package:sewa_mobils/commid/widgets/bottombar.dart';
import 'package:sewa_mobils/features/admin/screen/addcar.dart';
import 'package:sewa_mobils/features/auth/home/screen/homescreen.dart';
import 'package:sewa_mobils/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomBar(),
      );

    case AddCar.routeName:
      return MaterialPageRoute(
        builder: (_) => const AddCar(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
      );
  }
}
