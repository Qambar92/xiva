import 'package:dastur2/model/user_model.dart';
import 'package:dastur2/servises/pref_servises.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  static final id="HomePage";

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  final emailcontroller = TextEditingController();
  final posswordcontroller = TextEditingController();

  void _dologin(){
    String email = emailcontroller.text.toString().trim();
    String password = posswordcontroller.text.toString().trim();
    User user = User.from(email: email, possword: password);
    Prefs.storeUser(user);

    Prefs.lodeUser().then((User) => {
      print(user.email)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding: EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200]
              ),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  icon: Icon(Icons.email,color: Colors.blue,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding: EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                controller: posswordcontroller,
                decoration: InputDecoration(
                  hintText: "Possword",
                  border: InputBorder.none,
                  icon: Icon(Icons.lock,color: Colors.blue,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue),
              child: FlatButton(
                onPressed: _dologin,
                child: Text("Login",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      )
    );
  }
}
