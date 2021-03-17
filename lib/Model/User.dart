class User{
  final String username;
  final String userid;
  final String email;
  final String password;
  final String time;

  User({this.username, this.userid, this.email, this.password, this.time});

  Map<String,dynamic> toMap(){
    final map = Map<String,dynamic>();
    map['username'] = username;
    map['userid'] = userid;
    map['email'] = password;
    map['time'] = time;
    return map;
  }

  factory User.fromMap(Map<String, dynamic> map){
    return User(
      username: map['username'],
      userid: map['userid'],
      email: map['email'],
      password: map['password'],
      time: map['time'],
    );
  }
}