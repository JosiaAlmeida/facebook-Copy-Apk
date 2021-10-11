import 'package:facebookcopy/states/App_StateLogin.dart';

import './Route/index.dart';
import 'package:facebookcopy/Views/Me/profile/index.dart';
import 'package:flutter/material.dart';

import 'Views/Home/Signin/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Authenticate.instace,
        builder: (context, child) {
          return MaterialApp(
            //home: Profile(),
            initialRoute: Authenticate.instace.Authenticated ? Rotas.AppMe[0] : Rotas.AppLogin,
            routes: {
              Rotas.AppLogin: (_) => Login(),
              Rotas.AppMe[0]: (_) => Profile(),
            },
          );
        });
  }
}
