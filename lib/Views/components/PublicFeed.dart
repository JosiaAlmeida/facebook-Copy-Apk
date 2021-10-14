import 'package:facebookcopy/Views/components/Avatar.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class PublicFeed extends StatefulWidget {
  PublicFeed({Key? key}) : super(key: key);

  @override
  _PublicFeedState createState() => _PublicFeedState();
}

class _PublicFeedState extends State<PublicFeed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.black12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Avatar(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${Authenticate.instace.UserName}",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
              ],
            ),
            Text("Descricao",
                style: TextStyle(color: Colors.black, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
