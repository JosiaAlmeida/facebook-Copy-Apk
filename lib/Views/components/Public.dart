import 'package:facebookcopy/Route/index.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Public extends StatelessWidget {
  const Public({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, Rotas.AppMe[2]),
        child: Text("Em que estás a pensar?", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
