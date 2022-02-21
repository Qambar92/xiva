class User{
   late String id;
   String email;
   String possword;



  User({required this.id,required this.email,required this.possword,});
  User.from({required this.email,required this.possword});


  User.fromJson(Map<String, dynamic>json)
  :id = json["id"],
        email = json["Email"],
        possword = json["possword"];
  Map<String, dynamic>toJson() => {
    "id": id ,
    "Email" : email ,
    "possword" : possword,
  };
}
