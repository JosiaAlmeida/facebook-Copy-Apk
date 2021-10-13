import 'package:facebookcopy/Views/components/Avatar.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Row(
                    children: [
                      Avatar(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${Authenticate.instace.UserName}",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Mensagem",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ));
        });
  }
}
