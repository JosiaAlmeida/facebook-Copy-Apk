import 'package:flutter/material.dart';

class MoreSettingsPublic extends StatelessWidget {
  const MoreSettingsPublic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Text("Setting");
    }, itemCount: 3,);
  }
}