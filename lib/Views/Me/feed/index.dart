import 'package:facebookcopy/Views/components/Avatar.dart';
import 'package:facebookcopy/Views/components/Public.dart';
import 'package:facebookcopy/Views/components/PublicFeed.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  Widget StorysOrPublication() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.text_snippet),
                Text("Texto"),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.video_call,
                  color: Colors.red,
                ),
                Text("Video Ao"),
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_pin,
                color: Colors.red,
              ))
        ],
      ),
    );
  }

  Widget Story(context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.white,
                    )),
                Text(
                  "Adicionar Story",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black45),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Avatar(),
                  Public(),
                  Container(
                    child: Text(
                      "|",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Icon(Icons.add_a_photo),
                ],
              ),
            ),
            StorysOrPublication(),
            Story(context),
            PublicFeed(),
          ],
        ),
      ),
    );
  }
}
