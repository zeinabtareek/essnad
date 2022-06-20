import 'dart:convert';
/// data : {"user":{"id":2,"name":"mohamed","email":"mohamed@apps.com","photo":"https://esnad.ibtikar-soft.com/uploads/user_images/default.png","mobile":"015550474971","active":"1"},"token":"5|BWHhAiE14Vdw9Pg8FwrPl4tSJlFp6i9dj7iUTLj0"}
/// error : 0
/// message : ""

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));
String tokenModelToJson(TokenModel data) => json.encode(data.toJson());
class TokenModel {
  TokenModel({
      Data? data,
      int? error, 
      String? message,}){
    _data = data;
    _error = error;
    _message = message;
}

  TokenModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _error = json['error'];
    _message = json['message'];
  }
  Data? _data;
  int? _error;
  String? _message;

TokenModel copyWith({  Data? data,
  int? error,
  String? message,
}) => TokenModel(  data: data ?? _data,
  error: error ?? _error,
  message: message ?? _message,
);
  Data? get data => _data;
  int? get error => _error;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['error'] = _error;
    map['message'] = _message;
    return map;
  }


}

/// user : {"id":2,"name":"mohamed","email":"mohamed@apps.com","photo":"https://esnad.ibtikar-soft.com/uploads/user_images/default.png","mobile":"015550474971","active":"1"}
/// token : "5|BWHhAiE14Vdw9Pg8FwrPl4tSJlFp6i9dj7iUTLj0"

// Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      User? user, 
      String? token,}){
    _user = user;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }



  User? _user;
  String? _token;
Data copyWith({  User? user,
  String? token,
}) => Data(  user: user ?? _user,
  token: token ?? _token,
);
  User? get user => _user;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }

}

/// id : 2
/// name : "mohamed"
/// email : "mohamed@apps.com"
/// photo : "https://esnad.ibtikar-soft.com/uploads/user_images/default.png"
/// mobile : "015550474971"
/// active : "1"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      int? id, 
      String? name, 
      String? email, 
      String? photo, 
      String? mobile, 
      String? active,}){
    _id = id;
    _name = name;
    _email = email;
    _photo = photo;
    _mobile = mobile;
    _active = active;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _photo = json['photo'];
    _mobile = json['mobile'];
    _active = json['active'];
  }
  int? _id;
  String? _name;
  String? _email;
  String? _photo;
  String? _mobile;
  String? _active;
User copyWith({  int? id,
  String? name,
  String? email,
  String? photo,
  String? mobile,
  String? active,
}) => User(  id: id ?? _id,
  name: name ?? _name,
  email: email ?? _email,
  photo: photo ?? _photo,
  mobile: mobile ?? _mobile,
  active: active ?? _active,
);
  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get photo => _photo;
  String? get mobile => _mobile;
  String? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['photo'] = _photo;
    map['mobile'] = _mobile;
    map['active'] = _active;
    return map;
  }

}