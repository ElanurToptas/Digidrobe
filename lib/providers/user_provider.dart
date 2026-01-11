import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? user;

  void setUser(UserModel newUser) {
    user = newUser;
    notifyListeners();
  }

  void updateUser({String? name, String? gen, DateTime? date}) {
    if (user == null) return;

    user = UserModel(
      name: name ?? user!.name,
      gen: gen ?? user!.gen,
      date: date ?? user!.date,
    );

    notifyListeners();
  }
}
