import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewa_mobils/models/users.dart';

class UserProvider extends ChangeNotifier {
  Users _users = Users(
    id: '',
    name: '',
    username: '',
    password: '',
    address: '',
    type: '',
    token: '',
  );

  Users get users => _users;

  void setUser(String user) {
    _users = Users.fromJson(user);
    notifyListeners();
  }
}
