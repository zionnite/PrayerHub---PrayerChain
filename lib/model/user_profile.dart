import 'dart:convert';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    this.id,
    this.fullName,
    this.userName,
    this.age,
    this.sex,
    this.phoneNo,
    this.expertise,
    this.userImg,
    this.isBan,
    this.isVerify,
    this.isActivated,
    this.city,
    this.state,
    this.country,
    this.address,
  });

  int id;
  String fullName;
  String userName;
  String age;
  String sex;
  String phoneNo;
  String expertise;
  String userImg;
  String isBan;
  String isVerify;
  String isActivated;
  String city;
  String state;
  String country;
  String address;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        id: json["id"],
        fullName: json["full_name"],
        userName: json["user_name"],
        age: json["age"],
        sex: json["sex"],
        phoneNo: json["phone_no"],
        expertise: json["expertise"],
        userImg: json["user_img"],
        isBan: json["is_ban"],
        isVerify: json["is_verify"],
        isActivated: json["is_activated"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "user_name": userName,
        "age": age,
        "sex": sex,
        "phone_no": phoneNo,
        "expertise": expertise,
        "user_img": userImg,
        "is_ban": isBan,
        "is_verify": isVerify,
        "is_activated": isActivated,
        "city": city,
        "state": state,
        "country": country,
        "address": address,
      };
}
