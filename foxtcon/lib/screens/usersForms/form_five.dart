import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/login_response_model.dart';
import 'package:com.foxtcon.foxtconapp/screens/bottom_bar_screen.dart';
import 'package:foxtcon/screens/success_screen.dart';
import 'package:foxtcon/screens/usersForms/form_one.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/show_alert.dart';

import 'package:http/http.dart' as http;

class FormFiveScreen extends StatefulWidget {
  const FormFiveScreen({ Key? key }) : super(key: key);

  @override
  _FormFiveScreenState createState() => _FormFiveScreenState();
}

class _FormFiveScreenState extends State<FormFiveScreen> {
  final TextEditingController txtFirstName = TextEditingController();
  late String userID = "";
 @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() {
    Future.delayed(const Duration(microseconds: 200), () async {
      String tempstoreNmae = await getSigninResponse();
      setState(() {
        userID = tempstoreNmae;
      });
    });
  }

   Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }
  

pdfUploadAPI() async {
    final Uri uri = await getApiURL(API.EmployeePDF + userID);
    var jsonResponse;
    var response = await http.post(uri);
    print("responsecode--->${response.statusCode} $uri");
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      LoginResponseModel responseObj = LoginResponseModel.fromJson(response);
      if (responseObj.status == "1") {
        setPDF(true);
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const BottomBarScreen(),
          ),
        );
      } else {
        showAlertDialog(context, API.appName, responseObj.massage ?? "", () {
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
        child: ListView(
          children: [
            Text(
              'Shree Ram Management INC',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Text(
              'SEXUAL HARASSMENT POLICY',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Text(
              'It is the policy of Shree Ram Management INC. that all employees are responsible for ensuring that the workplace is free from sexual harassment. Because of Shree Ram Management INC strong disapproval of offensive or inappropriate sexual behavior at work, all employees must avoid any action or conduct which could be viewed as sexual harassment.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text(
              'Sexual harassment includes unwelcome sexual advances, requests for sexual favors, and other verbal or physical conduct of a sexually harassing nature, when:',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text(
                "1. submission to the harassment is made either explicitly or implicitly a term or condition of employment;",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "2. submission to or rejection of the harassment is used as the basis for employment decisions affecting the individual; or",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "3. the harassment has the purpose or effect of unreasonably interfering with an individual’s work performance or creating an intimidating, hostile, or offensive working environment.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text("Any employee who has a complaint of sexual harassment at work by anyone, including supervisors, co-workers or visitors, is required to report the incident in a timely manner. Such report should be in written form whenever possible. The employee should first bring the matter to the attention of his/her supervisor. If the immediate supervisor is involved in the harassing activity, the violation should be reported to that supervisor’s immediate supervisor. If an employee is dissatisfied with management’s response to his/her complaint, he/she may contact, Corporate President, Brian Patel who can be reached at (785-383-7081) or other Corporate Officer, Dave Sandir who can be reached at (785-554-6700).",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text("All reports of sexual harassment will be promptly investigated. As such, upon receiving such a report of sexual harassment, the President of Company or the employee’s supervisor will promptly initiate an investigation into the same. If a supervisor knows of an incident of sexual harassment, they shall take appropriate remedial action immediately. If the alleged harassment involves any types of threats of physical harm to the victim, the alleged harasser may be suspended with/without pay. During such suspension, an investigation will be conducted by Laxmi, KS. If the investigation supports charges of sexual harassment, disciplinary action against the alleged harasser will take place and may include termination. If the investigation reveals that the charges were brought falsely and with malicious intent, the charging party may be subject to disciplinary action, including termination.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text("If an employee is dissatisfied with Shree Ram Management INC’s response to his/her complaint, he/she may contact Shree Ram Management INC corporate attorney, Brian Jacquesat Sloan Law Firm, 1000 Bank of America Tower, 534 S. Kansas Ave., Topeka, KS 66603. (785)357-6311.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text("I acknowledge that I have read and understand that it is policy of Shree Ram Management INC that all employees are responsible for ensuring that the workplace is free from sexual harassment. I acknowledge I understand it is my responsibility to avoid any action or conduct which could be viewed as sexual harassment.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              textfieldWidget(
              strHint: 'Employee Name',
              controller: txtFirstName,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          pdfUploadAPI();
        },
         backgroundColor: AppColors.purpalWithAlpha,
        child: const Icon(Icons.done),
      ),
    );
  }
}