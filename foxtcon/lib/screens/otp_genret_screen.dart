import 'dart:convert';
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/employe_response_model.dart';
import 'package:com.foxtcon.foxtconapp/model/login_response_model.dart';
import 'package:foxtcon/screens/otp_verify_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/show_alert.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:http/http.dart' as http;

class OtpGenretScreen extends StatefulWidget {
  const OtpGenretScreen({Key? key}) : super(key: key);

  @override
  _OtpGenretScreenState createState() => _OtpGenretScreenState();
}

class _OtpGenretScreenState extends State<OtpGenretScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  final TextEditingController txtPhone = TextEditingController();
  final TextEditingController txtCountryCode = TextEditingController();
  final RoundedLoadingButtonController _btnOtpGenretController =
      RoundedLoadingButtonController();

  otpGenretAPI(String phone) async {
    late String code = "+1";
    if (txtCountryCode.text != "") {
      code = txtCountryCode.text;
    } else {
      txtCountryCode.text = code;
    }
    final parameter = {
      "employee-phone": "$code$phone",
    };
    final Uri uri = await getApiURL(API.Employee_number_verification);
    final newURI = uri.replace(queryParameters: parameter);

    var response = await http.get(newURI);
    print("response---$parameter");
    var jsonResponse;
    print("response---$response");
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      LoginResponseModel responseObj = LoginResponseModel.fromJson(response);
      if (responseObj.status == "1") {
        _btnOtpGenretController.success();
        // setLoggedIn(true);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => OTPvarifyScreen(
              code: txtCountryCode.text,
              mobNumber: txtPhone.text,
            ),
          ),
        );
        _btnOtpGenretController.stop();
      } else {
        showAlertDialog(context, API.appName, responseObj.massage ?? "", () {
          _btnOtpGenretController.stop();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, '', () {}, Colors.white, Colors.black),
      body: SafeArea(
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
              strWhatsYourPhoneNumber,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                          child: TextField(
                            controller: txtCountryCode,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.mainColor),
                              ),
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusColor: Colors.black,
                              fillColor: Colors.black,
                              labelText: "Country",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontSize: kDefaultPadding),
                            ),
                            cursorColor: Colors.black,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: kDefaultPadding,
                                    color: Colors.black),
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  showPhoneCode: true,
                                  countryListTheme: CountryListThemeData(
                                    flagSize: 25,
                                    backgroundColor: Colors.black,
                                    
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: Colors.white, fontSize: 15),
                                    
                                    inputDecoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.mainColor),
                                      ),
                                      border: const UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      suffixStyle: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: Colors.white, fontSize: 15),
                                      hintText: "Search Country",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              color: Colors.grey,
                                              fontSize: kDefaultPadding),
                                      filled: true,
                                      hoverColor: Colors.black,
                                    ),
                                  ),
                                  onSelect: (Country country) => txtCountryCode
                                      .text = "+" + country.phoneCode);
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 130,
                          child: TextField(
                            controller: txtPhone,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.mainColor),
                              ),
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusColor: Colors.black,
                              fillColor: Colors.black,
                              labelText: "Mobile Number",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontSize: kDefaultPadding),
                            ),
                            cursorColor: Colors.black,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: kDefaultPadding),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(strWeWillSend,
                        style: TextStyle(
                            fontSize: kDefaultPadding * 0.8,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    /*Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: AppColors.mainColor,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  OTPvarifyScreen(
                                code: "+1",
                                mobNumber: controller.text,
                              ),
                            ),
                          );
                        },
                        child: const Center(
                          child: Text(
                            "Verify",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: kDefaultPadding),
                          ),
                        ),
                      ),
                    ),*/
                    RoundedLoadingButton(
                      child: Text('Send OTP',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  fontSize: kDefaultPadding,
                                  fontWeight: FontWeight.bold)),
                      controller: _btnOtpGenretController,
                      color: AppColors.mainColor,
                      onPressed: () {
                        if (txtPhone.text.isEmpty) {
                          showAlertDialog(context, API.appName,
                              "Please enter your mobile number", () {
                            _btnOtpGenretController.stop();
                          });
                        } else {
                          otpGenretAPI(txtPhone.text);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }
}
