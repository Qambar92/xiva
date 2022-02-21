import 'package:dastur2/home.dart';
import 'package:dastur2/model/acount_model.dart';
import 'package:dastur2/servises/pref_servises.dart';
import 'package:flutter/material.dart';

import '../servises/pref_ser.dart';
class royhatdan_otish extends StatefulWidget {
  const royhatdan_otish({Key? key}) : super(key: key);
  static final id="royhatdan_otish";

  @override
  _royhatdan_otishState createState() => _royhatdan_otishState();
}

class _royhatdan_otishState extends State<royhatdan_otish> {
  final ismcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final posswordcontroller = TextEditingController();
  final possword2controller = TextEditingController();


  void do_login(){
    String ism = ismcontroller.text.toString().trim();
    String email = emailcontroller.text.toString().trim();
    String phone = phonecontroller.text.toString().trim();
    String possword = posswordcontroller.text.toString().trim();
    String possword2 = possword2controller.text.toString().trim();
    Acount acount = Acount.from(ism: ism, email: email, phone: phone, possword: possword, possword2: possword2);
    Pref.storeAcount(acount);

    Pref.lodeAcount().then((Acount) => {
      print(acount.ism)
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(left: 200),
            child: Text("Let's Get Started!",style: TextStyle(fontSize: 30,color: Colors.black87,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 15,),
          Container(
             margin: EdgeInsets.only(left: 10,right: 10),
            child: Text("Create an account to Q allure to get all features",style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
            ),
            child: TextField(
              controller: ismcontroller,
              decoration: InputDecoration(
                hintText: "Ism",
                border: InputBorder.none,
                icon: Icon(Icons.account_circle,color: Colors.blue,),
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
                color: Colors.white
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
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
            ),
            child: TextField(
              controller: phonecontroller,
              decoration: InputDecoration(
                hintText: "Phone",
                border: InputBorder.none,
                icon: Icon(Icons.phone,color: Colors.blue,),
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
                color: Colors.white
            ),
            child: TextField(
              controller: posswordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
                border: InputBorder.none,
                icon: Icon(Icons.lock,color: Colors.blue,),
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
                color: Colors.white
            ),
            child: TextField(
              controller: possword2controller,
              decoration: InputDecoration(
                hintText: "Confirm Possword",
                border: InputBorder.none,
                icon: Icon(Icons.lock,color: Colors.blue,),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 120,right: 120),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo),
            child: FlatButton(
              onPressed: do_login,
              child: Text("CREATE",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.only(left: 200),
                child: Text("Alredy have an account?   ",style: TextStyle(fontSize: 18,color: Colors.black54,),),

              ),
              Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context,homepage.id);
                    },
                    child: Text("Login here",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                  )
              ),
            ],
          )
        ],
      ) ,
    );
  }
}
