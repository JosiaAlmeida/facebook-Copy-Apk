import 'package:flutter/material.dart';

class Public extends StatelessWidget {
  const Public({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text("Em que estás a pensar?", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
