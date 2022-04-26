

import 'package:shared_preferences/shared_preferences.dart';

setUserResponse(String signinResponse) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('Email', signinResponse);
}

Future<String> getSigninResponse() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String? signinResponse = pref.getString('Email');
  return signinResponse ?? "";
}

setLoggedIn(bool loggedIn) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('loggedIn', loggedIn);
}

Future<bool> getloggedIn() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool? loggedIn = pref.getBool('loggedIn');
  return loggedIn ?? false;
}


////// MARK: - genret otp user data save

setOTPUserResponse(String signinResponse) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('user', signinResponse);
}

Future<String> getOTPSigninResponse() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String? signinResponse = pref.getString('user');
  return signinResponse ?? "";
}


///// MARK: - PDF Done

setPDF(bool pdfDone) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('pdfDone', pdfDone);
}

Future<bool> getPDF() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool? pdfDone = pref.getBool('pdfDone');
  return pdfDone ?? false;
}


///// MARK: - signup Done

setSignupDone(bool signupDone) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('signupDone', signupDone);
}

Future<bool> getSignupDone() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool? signupDone = pref.getBool('signupDone');
  return signupDone ?? false;
}

setUserId(dynamic userId) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('id', userId);
}

Future<String> getUserId() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String? userId = pref.getString('id');
  return userId ?? "";
}
