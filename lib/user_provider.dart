import 'package:flutter/material.dart';

class User {
  final String photoUrl;

  User({required this.photoUrl});
}

class UserProvider with ChangeNotifier {
  User _user = User(photoUrl: 'img/img1.png');

  User get getUser => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
