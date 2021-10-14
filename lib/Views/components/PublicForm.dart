import 'package:facebookcopy/Views/components/Avatar.dart';
import 'package:facebookcopy/Views/components/MoreSettingsPublic.dart';
import 'package:facebookcopy/Views/components/scopPublic.dart';

import '../../states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class PublicForm extends StatefulWidget {
  PublicForm({Key? key}) : super(key: key);

  @override
  _PublicFormState createState() => _PublicFormState();
}

class _PublicFormState extends State<PublicForm> {
  final auth = Authenticate.instace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar publicacao"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Publicar",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Avatar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${auth.UserName}", style: TextStyle(fontSize: 20)),
                  ScopePublic(),
                ],
              ),
            )
          ]),
        ),
        Form(
            child: Column(
          children: <Widget>[
            TextFormField(),
            //Container(child: MoreSettingsPublic()),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                  onPressed: () => auth.StateToPublic(false),
                  child: Text("Publicar")),
            )
          ],
        ))
      ]),
    );
  }
}
