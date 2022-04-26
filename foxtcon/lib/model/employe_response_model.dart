// To parse this JSON data, do
//
//     final employeeResponseModel = employeeResponseModelFromJson(jsonString);

import 'dart:convert';

EmployeeResponseModel employeeResponseModelFromJson(String str) =>
    EmployeeResponseModel.fromJson(json.decode(str));

String employeeResponseModelToJson(EmployeeResponseModel data) =>
    json.encode(data.toJson());

class EmployeeResponseModel {
  EmployeeResponseModel({
    this.status,
    this.massage,
    this.employeeData=const [],
  });

  dynamic status;
  dynamic massage;
  List<EmployeeDatum> employeeData =[];

   EmployeeResponseModel.fromJson(Map<String, dynamic> json) {
     status = json["status"];
     massage = json["massage"];

     (json["employee_data"]??[]).forEach((e){
       employeeData.add(EmployeeDatum.fromJson(e));
     });

   }

  Map<String, dynamic> toJson() => {
        "status": status,
        "massage": massage,
        "employee_data": employeeData == null
            ? null
            : List<dynamic>.from(employeeData!.map((x) => x.toJson())),
      };
}

class EmployeeDatum {
  EmployeeDatum({
    this.id,
    this.uId,
    this.name,
    this.email,
    this.phone,
    this.employeeVerifyOtp,
    this.verification,
    this.password,
    this.shift,
    this.category,
    this.hourlyPay,
    this.status,
    this.gender,
    this.dateOfBirth,
    this.location,
    this.profilePic,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
  });

  dynamic id;
  dynamic uId;
  dynamic name;
  dynamic email;
  dynamic phone;
  dynamic employeeVerifyOtp;
  dynamic verification;
  dynamic password;
  dynamic shift;
  dynamic category;
  dynamic hourlyPay;
  dynamic status;
  dynamic gender;
  dynamic dateOfBirth;
  dynamic location;
  dynamic profilePic;
  dynamic rememberToken;
  dynamic createdAt;
  dynamic updatedAt;

  factory EmployeeDatum.fromJson(Map<String, dynamic> json) => EmployeeDatum(
        id: json["id"],
        uId: json["u_id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        employeeVerifyOtp: json["employee_verify_otp"],
        verification: json["verification"],
        password: json["password"],
        shift: json["shift"],
        category: json["category"],
        hourlyPay: json["hourly_pay"],
        status: json["status"],
        gender: json["gender"],
        dateOfBirth: json["date_of_birth"],
        location: json["location"],
        profilePic: json["profile_pic"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "u_id": uId,
        "name": name,
        "email": email,
        "phone": phone,
        "employee_verify_otp": employeeVerifyOtp,
        "verification": verification,
        "password": password,
        "shift": shift,
        "category": category,
        "hourly_pay": hourlyPay,
        "status": status,
        "gender": gender,
        "date_of_birth": dateOfBirth,
        "location": location,
        "profile_pic": profilePic,
        "remember_token": rememberToken,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
