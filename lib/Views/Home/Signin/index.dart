import 'package:facebookcopy/Route/index.dart';
import 'package:facebookcopy/states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;
  String? user;
  Widget EmailNumber() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Número de celular ou email",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          height: 40.0,
          child: TextField(
            onChanged: (value){
              setState(() {
                user = value;
              });
            },
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
          ),
        )
      ],
    ));
  }

  Widget PassWordText() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Senha",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          height: 40.0,
          child: TextField(
            obscureText: !showPassword,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 18,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye),
                  color: showPassword ? Colors.blue : Colors.grey,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
          ),
        )
      ],
    ));
  }

  Widget ButtomEntry(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {
            Authenticate.instace.AuthenticadUser(user, true);
            Navigator.pushNamed(context, Rotas.AppMe[0]);
          },
          child: Center(
              child: Text("Entrar",
                  style: TextStyle(color: Colors.white)))),
    );
  }

  Widget ButtomSignUp() {
    return Container(
      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width * 0.4,
      child: TextButton(
          onPressed: () {},
          child: Center(
              child: Text("Criar nova conta",
                  style: TextStyle(color: Colors.white)))),
    );
  }

  Widget ForgetPassword(){
    return Text("Esqueceu a senha?", style: TextStyle(color: Colors.blue),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Facebook")),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmailNumber(),
            PassWordText(),
            Center(child: ButtomEntry(context)),
            ForgetPassword(),
            SizedBox(
              height: 10,
            ),
            Center(child: Text("OU")),
            SizedBox(
              height: 10,
            ),
            Center(child: ButtomSignUp())
          ],
        ),
      ),
    );
  }
}
