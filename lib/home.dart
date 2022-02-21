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
             // width: 200,
              height: 230,
              child: Image.asset('assets/image/2.png')
            ),


            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding: EdgeInsets.only(left: 15,right: 15),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200]
              ),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  icon: Icon(Icons.account_circle_sharp,color: Colors.blue,),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding: EdgeInsets.only(left: 15,right: 15),
              height: 60,
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
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(left: 200),
              child: Text("Forgot Password?",style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 120,right: 120),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo),
              child: FlatButton(
                onPressed: _dologin,
                child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            SizedBox(height: 40,),
            Container(
             // margin: EdgeInsets.only(left: 200),
              child: Text("Or connect using",style: TextStyle(fontSize: 15,color: Colors.black26,),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 // margin: EdgeInsets.only(left: 120,right: 120),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: FlatButton(
                    onPressed: _dologin,
                    child: Row(
                      children: [
                        Icon(Icons.facebook,color: Colors.white,),
                        SizedBox(width: 5,),

                        Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  // margin: EdgeInsets.only(left: 120,right: 120),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange),
                  child: FlatButton(
                    onPressed: _dologin,
                    child: Row(
                      children: [
                        Icon(Icons.g_mobiledata,color: Colors.white,size: 35,),
                        SizedBox(width: 5,),

                        Text("Google",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 200),
                  child: Text("Don't have an account?   ",style: TextStyle(fontSize: 18,color: Colors.black54,),),

                ),
                Container(
                    child: GestureDetector(
                      onTap: (){
                        print("Button");
                      },
                      child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                    )
                ),
              ],
            )



          ],
        ),
      )
    );
  }
}
