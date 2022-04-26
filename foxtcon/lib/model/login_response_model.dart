// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    LoginResponseModel({
        this.status,
        this.massage,
    });

    dynamic status;
    dynamic massage;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        status: json["status"],
        massage: json["massage"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "massage": massage,
    };
}
