import 'package:flutter/material.dart';

class ScopePublic extends StatefulWidget {
  ScopePublic({Key? key}) : super(key: key);

  @override
  _ScopePublicState createState() => _ScopePublicState();
}

class _ScopePublicState extends State<ScopePublic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: (){}, child: Row(children: [
        Icon(Icons.person),
        Text("Scope"),
        Icon(Icons.arrow_drop_down)
      ],)),
    );
  }
}