import 'dart:convert';

class User {
  String id;
  String name;
  String phone;

  User(this.id, this.name, this.phone);

  String toJson(){
    Map map =  {
        'id': id,
        'name': name,
        'phone': phone,
      };
    return jsonEncode(map);
  }

  factory User.fromJson(String json){
    Map map = jsonDecode(json);
    return User(map["id"], map["name"], map["phone"]);
  }

}