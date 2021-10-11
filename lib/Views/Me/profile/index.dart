import '../../../states/App_StateLogin.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Widget homeProfileBackGround(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/img/img.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget Avatar(context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(child: Image.asset('lib/img/img.jpg')),
        ));
  }

  Widget ButtonStory() {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.add_circle), Text("Adicionar ao story")],
      ),
    );
  }

  Widget ButtonEdit() {
    return Container(
      width: 54,
      height: 34,
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon:  Icon(Icons.edit, color: Colors.white, size: 18,),
        ),
    );
  }

  Widget ButtonMoreSttings() {
    return Container(
      width: 54,
      height: 34,
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {},
        child:  Text("...", style: TextStyle(color: Colors.white, fontSize: 12,)),
        ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("${Authenticate.instace.UserName}"),
      ),
      body: Container(
        child: Column(
          children: [
            homeProfileBackGround(context),
            Avatar(context),
            Text(
              "${Authenticate.instace.UserName}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonStory(),
                  ButtonEdit(),
                  ButtonMoreSttings()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
