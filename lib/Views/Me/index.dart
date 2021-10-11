import 'package:facebookcopy/Views/Me/feed/index.dart';
import 'package:flutter/material.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("facebook"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_book))
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.notification_add)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Feed(),
          Feed(),
          Feed(),
          Feed(),
        ],),
      ),
    );
  }
}
