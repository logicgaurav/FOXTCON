import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/login_response_model.dart';
import 'package:foxtcon/screens/bottom_bar_screen.dart';
import 'package:foxtcon/screens/forgot_password_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/show_alert.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:http/http.dart' as http;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtemail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  loginAPI(String email, String password) async {
    final Uri uri = await getApiURL(API.LOGIN);

    Map<String, dynamic> parameter = {
      "login-email": email,
      "login-password": password,
    };

    var jsonResponse;
    var response = await http.post(uri, body: parameter);
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      LoginResponseModel responseObj = LoginResponseModel.fromJson(response);
      if (responseObj.status == "1") {
        _btnController.success();
        setUserResponse(txtemail.text);
        setLoggedIn(true);
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const BottomBarScreen(),
          ),
        );
        _btnController.stop();
      } else {
        showAlertDialog(context, API.appName, responseObj.massage ?? "", () {
          _btnController.stop();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, '', () {}, Colors.white, Colors.black),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 160,
            child: Image(
              image: AssetImage(imgIcon),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: txtemail,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.mainColor),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusColor: Colors.black,
                fillColor: Colors.black,
                labelText: "Email",
                labelStyle: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.grey, fontSize: kDefaultPadding),
              ),
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: kDefaultPadding),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.mainColor),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusColor: Colors.black,
                fillColor: Colors.black,
                labelText: "Password",
                labelStyle: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.grey, fontSize: kDefaultPadding),
              ),
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: kDefaultPadding),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ForgotPassword(),
                ),
              );
            },
            child: Center(
              child: Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: kDefaultPadding, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          RoundedLoadingButton(
            child: Text('Login',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: kDefaultPadding, fontWeight: FontWeight.bold)),
            controller: _btnController,
            color: AppColors.mainColor,
            onPressed: () {
              if (txtemail.text.isEmpty) {
                showAlertDialog(
                    context, API.appName, "Please enter your email", () {});
                _btnController.stop();
              } else if (txtPassword.text.isEmpty) {
                showAlertDialog(
                    context, API.appName, "Please enter your password", () {});
                _btnController.stop();
              } else {
                loginAPI(txtemail.text, txtPassword.text);
              }
            },
          ),
          /* InkWell(
            onTap: () {
              loginAPI(txtemail.text, txtPassword.text);
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: kDefaultPadding, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),*/
          // const SizedBox(
          //   height: kDefaultPadding,
          // ),
          /*RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(text: "New User? ", style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: kDefaultPadding, fontWeight: FontWeight.normal, color: Colors.grey)),
                  TextSpan(
                      text: "Create Account",
                      style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: kDefaultPadding, fontWeight: FontWeight.bold, color: AppColors.mainColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignUpScreen(),
                  ),
                );
                        }),
                ],
              ),
            ),*/
        ],
      ),
    );
  }
}
