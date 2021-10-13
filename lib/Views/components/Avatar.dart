import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  Avatar({Key? key}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('lib/img/img.jpg'),
      ),
    );
  }
}
