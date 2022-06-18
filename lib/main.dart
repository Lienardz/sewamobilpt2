import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sewa_mobils/commid/widgets/bottombar.dart';
import 'package:sewa_mobils/constants/global_variables.dart';
import 'package:sewa_mobils/features/admin/screen/screenadmin.dart';
import 'package:sewa_mobils/features/auth/home/screen/homescreen.dart';
import 'package:sewa_mobils/features/auth/screens/auth_screen.dart';
import 'package:sewa_mobils/features/auth/services/auth_services.dart';
import 'package:sewa_mobils/provider/userprovider.dart';
import 'package:sewa_mobils/router.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthServices authServices = AuthServices();
  @override
  void initState() {
    super.initState();
    authServices.getUserData(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SewaMobil',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).users.token.isNotEmpty
          ? Provider.of<UserProvider>(context).users.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
