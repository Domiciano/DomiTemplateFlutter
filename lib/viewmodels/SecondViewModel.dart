import 'package:domitemplate_flutter/repo/UserServices.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/User.dart';

class SecondViewModel extends ChangeNotifier{

  String? _user;
  String? get user => _user;

  void getUser() async{
    _user = null;
    notifyListeners();
    _user = await UserServices.getUsers();
    notifyListeners();
  }

}