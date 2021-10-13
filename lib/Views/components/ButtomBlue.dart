import 'package:flutter/material.dart';

class ButtomBlue extends StatefulWidget {
  ButtomBlue({Key? key}) : super(key: key);

  @override
  _ButtomBlueState createState() => _ButtomBlueState();
}

class _ButtomBlueState extends State<ButtomBlue> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text("Aceitar"),);
  }
}