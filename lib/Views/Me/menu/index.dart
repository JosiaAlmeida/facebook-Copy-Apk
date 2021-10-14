import 'package:facebookcopy/Route/index.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          padding: EdgeInsets.all(8),
          child: TextButton(onPressed: () {},child: Text("Dados", style: TextStyle(fontSize: 20, color: Colors.black))),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextButton(onPressed: () {},child: Text("Dados", style: TextStyle(fontSize: 20, color: Colors.black))),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: TextButton(onPressed: () {
            Authenticate.instace.Logout(false);
            Navigator.pushNamed(context, Rotas.AppLogin);
          },child: Text("Terminar sessão", style: TextStyle(fontSize: 20, color: Colors.black))),
        ),
      ],)
    );
  }
}
