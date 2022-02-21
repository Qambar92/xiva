//import 'dart:convert';

class Acount{
  late String id;
  String ism;
  String email;
  String phone;
  String possword;
  String possword2;


  Acount({required this.id,required this.ism,required this.email,required this.phone,required this.possword,required this.possword2});
  Acount.from({required this.ism,required this.email,required this.phone,required this.possword,required this.possword2});

  Acount.fromJson(Map<String, dynamic>json)
      :id = json["id"],
        ism = json["ism"],
        email = json["Email"],
        phone = json["phone"],
        possword = json["possword"],
        possword2 = json["possword2"];
  Map<String, dynamic>toJson() => {
    "id": id ,
    "ism": ism,
    "Email" : email ,
    "phone" : phone,
    "possword" : possword,
    "possword2" : possword2,
  };
}
