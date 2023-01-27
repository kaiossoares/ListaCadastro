import 'package:flutter/material.dart';
import 'package:lista_cadastro/components/user_tile.dart';
import 'package:lista_cadastro/provider/users.dart';
import 'package:lista_cadastro/models/user.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              users.put(User(
                name: 'Teste',
                email: 'aluno@cod3r.com.br',
                avatarUrl: ''
              ));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}