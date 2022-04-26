import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/employe_response_model.dart';
import 'package:foxtcon/model/otp_response_model.dart';
import 'package:foxtcon/screens/bottom_bar_screen.dart';
import 'package:foxtcon/screens/login_screen.dart';
import 'package:foxtcon/screens/signup_screen.dart';
import 'package:foxtcon/screens/usersForms/forms.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/show_alert.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:http/http.dart' as http;

class OTPvarifyScreen extends StatefulWidget {
  final String code;
  final String mobNumber;
  const OTPvarifyScreen({Key? key, required this.code, required this.mobNumber})
      : super(key: key);

  @override
  _OTPvarifyScreenState createState() => _OTPvarifyScreenState();
}

class _OTPvarifyScreenState extends State<OTPvarifyScreen> {
  final TextEditingController otpOne = TextEditingController();
  final TextEditingController otpTwo = TextEditingController();
  final TextEditingController otpThree = TextEditingController();
  final TextEditingController otpFour = TextEditingController();
  final RoundedLoadingButtonController _btnOtpVerifyController =
  RoundedLoadingButtonController();

  late bool doneForSignup = false;
  late bool doneForPDF = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 200), () async {
      bool signup = await getSignupDone();
      bool pdf = await getPDF();
      setState(() {
        doneForSignup = signup;
        doneForPDF = pdf;
      });
    });
  }

  otpCheckAPI( otp) async {
    var parameter = {
      "employee-verification-otp": otp,
    };
    final Uri uri = await getApiURL(API.EMPLOYEE_OTP_CHECK);
    final newURI = uri.replace(queryParameters: parameter);
    var response = await http.get(newURI);

    var jsonResponse;
    print("Response---> ${response.toString()}");

    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      print("response vbhjnhn---$response");
      OtpResponseModel responseObj = OtpResponseModel.fromJson(response);
      print("response vbhjnhn---$responseObj");

      String strUser = otpResponseModelToJson(responseObj);
      print("response vbhjnhn---$strUser");

      setOTPUserResponse(strUser);
      setUserResponse(responseObj.employeeData!.email ?? "");


      setUserId(responseObj.employeeData?.id);

      if (responseObj.employeeData!.verification == "0") {
        _btnOtpVerifyController.success();
        naviGate();
        _btnOtpVerifyController.stop();
      } else if(responseObj.employeeData!.verification == "1"){
        showAlertDialog(context, API.appName, responseObj.massage!+" Wait for Admin Approval" ?? "", () {
          _btnOtpVerifyController.stop();
        });
      } else{
        _btnOtpVerifyController.success();
        // setLoggedIn(true);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const BottomBarScreen(),
          ),
            (_)=> false,
        );
        _btnOtpVerifyController.stop();


      }
    }
  }

  naviGate(){
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const SignUpScreen(),
      ),
    );
    /*if(doneForSignup){
       Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const LoginPage(),
          ),
        );
      //if(doneForPDF){
       *//* Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const BottomBarScreen(),
          ),
        );*//*
      *//*} else {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const Forms(),
          ),
        );
      }*//*
    } else {

    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, '', () {}, Colors.white, Colors.black),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage(imgSendMsg),
                height: 140,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Enter the 4-digit code",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black, fontSize: 18),
              ),
              Text(
                "Sent to",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${widget.code} ${widget.mobNumber}",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.black, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        onChanged: (str) {
                          if (str.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: otpOne,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: kDefaultPadding),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        onChanged: (str) {
                          if (str.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: otpTwo,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: kDefaultPadding),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        onChanged: (str) {
                          if (str.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: otpThree,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: kDefaultPadding),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        onChanged: (str) {
                          if (str.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: otpFour,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: kDefaultPadding),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              RoundedLoadingButton(
                child: Text('Verify OTP',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: kDefaultPadding,
                        fontWeight: FontWeight.bold)),
                controller: _btnOtpVerifyController,
                color: AppColors.mainColor,
                onPressed: () {
                  if (otpOne.text.isEmpty ||
                      otpTwo.text.isEmpty ||
                      otpThree.text.isEmpty ||
                      otpFour.text.isEmpty) {
                    showAlertDialog(context, API.appName, "Please enter OTP",
                            () {
                          _btnOtpVerifyController.stop();
                        });
                  } else {
                    var otp = (otpOne.text +
                        otpTwo.text +
                        otpThree.text +
                        otpFour.text);
                    print(otpOne.text+"="+otpTwo.text+"="+otpThree.text);
                   otpCheckAPI(otp);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
