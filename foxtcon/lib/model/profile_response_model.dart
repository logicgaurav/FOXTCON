// To parse this JSON data, do
//
//     final profileResponseModel = profileResponseModelFromJson(jsonString);

import 'dart:convert';

ProfileResponseModel profileResponseModelFromJson(String str) => ProfileResponseModel.fromJson(json.decode(str));

String profileResponseModelToJson(ProfileResponseModel data) => json.encode(data.toJson());

class ProfileResponseModel {
    ProfileResponseModel({
        this.status,
        this.massage,
        this.employeeProfileData,
    });

    dynamic status;
    dynamic massage;
    EmployeeProfileData? employeeProfileData;

    factory ProfileResponseModel.fromJson(Map<String, dynamic> json) => ProfileResponseModel(
        status: json["status"] == null ? null : json["status"],
        massage: json["massage"] == null ? null : json["massage"],
        employeeProfileData: json["employee_profile_data"] == null ? null : EmployeeProfileData.fromJson(json["employee_profile_data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "massage": massage == null ? null : massage,
        "employee_profile_data": employeeProfileData == null ? null : employeeProfileData!.toJson(),
    };
}

class EmployeeProfileData {
    EmployeeProfileData({
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
        //this.dateOfBirth,
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
    //DateTime? dateOfBirth;
    dynamic location;
    dynamic profilePic;
    dynamic rememberToken;
    dynamic createdAt;
    dynamic updatedAt;

    factory EmployeeProfileData.fromJson(Map<String, dynamic> json) => EmployeeProfileData(
        id: json["id"] == null ? null : json["id"],
        uId: json["u_id"] == null ? null : json["u_id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        employeeVerifyOtp: json["employee_verify_otp"] == null ? null : json["employee_verify_otp"],
        verification: json["verification"] == null ? null : json["verification"],
        password: json["password"] == null ? null : json["password"],
        shift: json["shift"] == null ? null : json["shift"],
        category: json["category"] == null ? null : json["category"],
        hourlyPay: json["hourly_pay"] == null ? null : json["hourly_pay"],
        status: json["status"] == null ? null : json["status"],
        gender: json["gender"] == null ? null : json["gender"],
        //dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
        location: json["location"] == null ? null : json["location"],
        profilePic: json["profile_pic"] == null ? null : json["profile_pic"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "u_id": uId == null ? null : uId,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "employee_verify_otp": employeeVerifyOtp == null ? null : employeeVerifyOtp,
        "verification": verification == null ? null : verification,
        "password": password == null ? null : password,
        "shift": shift == null ? null : shift,
        "category": category == null ? null : category,
        "hourly_pay": hourlyPay == null ? null : hourlyPay,
        "status": status == null ? null : status,
        "gender": gender == null ? null : gender,
       // "date_of_birth": dateOfBirth == null ? null : "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "location": location == null ? null : location,
        "profile_pic": profilePic == null ? null : profilePic,
        "remember_token": rememberToken,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
    };
}
