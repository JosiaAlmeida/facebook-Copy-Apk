import 'package:flutter/widgets.dart';

class Authenticate extends ChangeNotifier {
  static Authenticate instace = Authenticate();

  bool Authenticated = false;
  String? UserName;
  //String? PassUser;
  void AuthenticadUser(user, auth){
    UserName = user;
    //PassUser = pass;
    Authenticated = auth;
    notifyListeners();
  }
}