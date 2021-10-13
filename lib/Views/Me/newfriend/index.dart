import 'package:facebookcopy/Views/components/Avatar.dart';
import 'package:facebookcopy/Views/components/ButtomBlue.dart';
import 'package:facebookcopy/Views/components/ButtomDefault.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class AddFriend extends StatefulWidget {
  AddFriend({Key? key}) : super(key: key);

  @override
  _AddFriendState createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
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
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ButtomBlue(),
                      ButtomDefault()
                    ],),)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
