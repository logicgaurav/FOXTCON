// To parse this JSON data, do
//
//     final mobileNumberResponseModel = mobileNumberResponseModelFromJson(jsonString);

import 'dart:convert';

MobileNumberResponseModel mobileNumberResponseModelFromJson(String str) => MobileNumberResponseModel.fromJson(json.decode(str));

String mobileNumberResponseModelToJson(MobileNumberResponseModel data) => json.encode(data.toJson());

class MobileNumberResponseModel {
    MobileNumberResponseModel({
        this.status,
        this.massage,
        this.employeeData,
    });

    dynamic status;
    dynamic massage;
    EmployeeData? employeeData;

    factory MobileNumberResponseModel.fromJson(Map<String, dynamic> json) => MobileNumberResponseModel(
        status: json["status"],
        massage: json["massage"],
        employeeData: EmployeeData.fromJson(json["employee_data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "massage": massage,
        "employee_data": employeeData!.toJson(),
    };
}

class EmployeeData {
    EmployeeData({
        this.id,
        this.uId,
        this.name,
        this.lastName,
        this.email,
        this.phone,
        this.employeeVerifyOtp,
        this.verification,
        this.password,
        this.shift,
        this.departments,
        this.property,
        this.hourlyPay,
        this.status,
        this.gender,
        this.dateOfBirth,
        this.location,
        this.title,
        this.employmentStartDate,
        this.profilePic,
        this.rememberToken,
        this.createdAt,
        this.updatedAt,
    });

    dynamic id;
    dynamic uId;
    dynamic name;
    dynamic lastName;
    dynamic email;
    dynamic phone;
    dynamic employeeVerifyOtp;
    dynamic verification;
    dynamic password;
    dynamic shift;
    dynamic departments;
    dynamic property;
    dynamic hourlyPay;
    dynamic status;
    dynamic gender;
    dynamic dateOfBirth;
    dynamic location;
    dynamic title;
    dynamic employmentStartDate;
    dynamic profilePic;
    dynamic rememberToken;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory EmployeeData.fromJson(Map<String, dynamic> json) => EmployeeData(
        id: json["id"],
        // uId: json["u_id"],
        name: json["name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        employeeVerifyOtp: json["employee_verify_otp"],
        verification: json["verification"],
        password: json["password"],
        shift: json["shift"],
        departments: json["departments"],
        property: json["property"],
        hourlyPay: json["hourly_pay"],
        status: json["status"],
        gender: json["gender"],
        dateOfBirth: json["date_of_birth"],
        location: json["location"],
        title: json["title"],
        employmentStartDate: json["employment_start_date"],
        profilePic: json["profile_pic"],
        rememberToken: json["remember_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "u_id": uId,
        "name": name,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "employee_verify_otp": employeeVerifyOtp,
        "verification": verification,
        "password": password,
        "shift": shift,
        "departments": departments,
        "property": property,
        "hourly_pay": hourlyPay,
        "status": status,
        "gender": gender,
        "date_of_birth": dateOfBirth,
        "location": location,
        "title": title,
        "employment_start_date": employmentStartDate,
        "profile_pic": profilePic,
        "remember_token": rememberToken,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
    };
}
