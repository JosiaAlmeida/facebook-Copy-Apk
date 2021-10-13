import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 4,itemBuilder: (context, index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.notifications_active, color: Colors.red,),
            Text("New Notification", style: TextStyle(fontSize: 18),),
            Text("New Notification", style: TextStyle(fontSize: 18),),
          ],
        ),
      );
    });
  }
}