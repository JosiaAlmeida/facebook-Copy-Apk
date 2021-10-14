import 'package:facebookcopy/Route/index.dart';
import 'package:facebookcopy/Views/Me/feed/index.dart';
import 'package:facebookcopy/Views/Me/message/index.dart';
import 'package:facebookcopy/Views/Me/newfriend/index.dart';
import 'package:facebookcopy/Views/Me/notify/index.dart';
import 'package:facebookcopy/Views/components/PublicForm.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Me extends StatelessWidget {
  Me({Key? key}) : super(key: key);
  final state = Authenticate.instace;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("facebook", style: TextStyle(fontSize: 20),),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () => Navigator.pushNamed(context, Rotas.AppMe[5]), icon: Icon(Icons.more_horiz))
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.message_rounded)),
              Tab(icon: Icon(Icons.notification_add)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Feed(),
          AddFriend(),
          Message(),
          Notify(),
        ],),
      ),
    );
  }
}
