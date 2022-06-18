import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sewa_mobils/commid/widgets/bottombar.dart';
import 'package:sewa_mobils/constants/error_handling.dart';
import 'package:sewa_mobils/constants/utility.dart';
import 'package:sewa_mobils/features/auth/home/screen/homescreen.dart';
import 'package:sewa_mobils/models/users.dart';
import 'package:sewa_mobils/constants/global_variables.dart';
import 'package:http/http.dart' as http;
import 'package:sewa_mobils/provider/userprovider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  void signUpUser({
    required BuildContext context,
    required String username,
    required String password,
    required String name,
  }) async {
    try {
      Users users = Users(
        id: '',
        name: name,
        username: username,
        password: password,
        address: '',
        type: '',
        token: '',
      );
      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: users.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSucess: () {
          showSnackBar(
            context,
            "Account has been Created!",
          );
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void signInUser({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSucess: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await preferences.setString(
              'x-auth-token', jsonDecode(res.body)['token']);
          Navigator.pushNamedAndRemoveUntil(
            context,
            BottomBar.routeName,
            (route) => false,
          );
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void getUserData({
    required BuildContext context,
  }) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? token = preferences.getString('x-auth-token');

      if (token == null) {
        preferences.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(
        Uri.parse('$uri/ValidToken'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token!
        },
      );

      var response = jsonDecode(tokenRes.body);

      if (response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$uri/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token
          },
        );

        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
