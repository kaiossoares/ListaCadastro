import 'package:flutter/material.dart';
import 'package:lista_cadastro/data/dummy_users.dart';
import 'package:lista_cadastro/components/user_tile.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}