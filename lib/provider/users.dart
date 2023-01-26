import 'package:flutter/cupertino.dart';
import 'package:lista_cadastro/data/dummy_users.dart';
import 'package:lista_cadastro/models/user.dart';

class UsersProvider with ChangeNotifier {
  final Map <String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return[..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }
}