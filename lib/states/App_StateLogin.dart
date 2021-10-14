import 'package:flutter/widgets.dart';

class Authenticate extends ChangeNotifier {
  static Authenticate instace = Authenticate();

  bool Authenticated = false;
  bool initPublic = false;
  String? UserName;
  //String? PassUser;

  void StateToPublic(value){
    initPublic = value;
    notifyListeners();
  }

  void Logout(value){
    Authenticated = value;
    UserName = null;
    notifyListeners();
  }
  void AuthenticadUser(user, auth){
    UserName = user;
    //PassUser = pass;
    Authenticated = auth;
    notifyListeners();
  }
}