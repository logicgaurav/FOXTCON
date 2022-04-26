// To parse this JSON data, do
//
//     final otpResponseModel = otpResponseModelFromJson(jsonString);

import 'dart:convert';

OtpResponseModel otpResponseModelFromJson(String str) =>
    OtpResponseModel.fromJson(json.decode(str));

String otpResponseModelToJson(OtpResponseModel data) =>
    json.encode(data.toJson());

class OtpResponseModel {
  dynamic status;
  dynamic massage;
  EmployeeData? employeeData;

  OtpResponseModel({this.status, this.massage, this.employeeData});

  OtpResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    massage = json['massage'];
    employeeData = json['employee_data'] != null
        ? EmployeeData.fromJson(json['employee_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['massage'] = massage;
    if (employeeData != null) {
      data['employee_data'] = employeeData!.toJson();
    }
    return data;
  }
}

class EmployeeData {
  dynamic id;
  dynamic uId;
  dynamic name;
  dynamic lastName;
  dynamic email;
  dynamic phone;
  dynamic ssn;
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
  dynamic ssnUpload;
  dynamic identityUpload;
  dynamic rememberToken;
  dynamic createdAt;
  dynamic updatedAt;

  EmployeeData(
      {this.id,
      this.uId,
      this.name,
      this.lastName,
      this.email,
      this.phone,
      this.ssn,
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
      this.ssnUpload,
      this.identityUpload,
      this.rememberToken,
      this.createdAt,
      this.updatedAt});

  EmployeeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uId = json['u_id'];
    name = json['name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    ssn = json['ssn'];
    employeeVerifyOtp = json['employee_verify_otp'];
    verification = json['verification'];
    password = json['password'];
    shift = json['shift'];
    departments = json['departments'];
    property = json['property'];
    hourlyPay = json['hourly_pay'];
    status = json['status'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'];
    location = json['location'];
    title = json['title'];
    employmentStartDate = json['employment_start_date'];
    profilePic = json['profile_pic'];
    ssnUpload = json['ssn_upload'];
    identityUpload = json['identity_upload'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['u_id'] = uId;
    data['name'] = name;
    data['last_name'] = lastName;
    data['email'] = email;
    data['phone'] = phone;
    data['ssn'] = ssn;
    data['employee_verify_otp'] = employeeVerifyOtp;
    data['verification'] = verification;
    data['password'] = password;
    data['shift'] = shift;
    data['departments'] = departments;
    data['property'] = property;
    data['hourly_pay'] = hourlyPay;
    data['status'] = status;
    data['gender'] = gender;
    data['date_of_birth'] = dateOfBirth;
    data['location'] = location;
    data['title'] = title;
    data['employment_start_date'] = employmentStartDate;
    data['profile_pic'] = profilePic;
    data['ssn_upload'] = ssnUpload;
    data['identity_upload'] = identityUpload;
    data['remember_token'] = rememberToken;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
