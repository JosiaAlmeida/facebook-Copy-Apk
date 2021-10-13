import 'package:flutter/material.dart';

class ButtomDefault extends StatefulWidget {
  ButtomDefault({Key? key}) : super(key: key);

  @override
  _ButtomDefaultState createState() => _ButtomDefaultState();
}

class _ButtomDefaultState extends State<ButtomDefault> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text("Eliminar"));
  }
}