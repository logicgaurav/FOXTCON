import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/theme.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class FormOneScreen extends StatefulWidget {
  const FormOneScreen({Key? key}) : super(key: key);

  @override
  _FormOneScreenState createState() => _FormOneScreenState();
}

class _FormOneScreenState extends State<FormOneScreen> {
  final TextEditingController txtFirstName = TextEditingController();
  bool isChecked = false;
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return AppColors.mainColor;
    }
    return AppColors.mainColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding),
        child: ListView(
          children: [
            Text(
              strEmploymentEligibilityVerification,
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Divider(
              color: Colors.black,
            ),
            Text(
              strStartHere,
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              strAntiDiscrimi,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                strSection1,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            textfieldWidget(
              strHint: 'First Name',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Last Name',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Middle',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Address (Street Number and Name)',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'City',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'State',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'ZIP Code',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Phone Number',
              controller: txtFirstName,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "ARE YOU 18 YEARS OR OLDER?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "Yes",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "No",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "ARE YOU PREVENTED FROM LAWFULLY BECOMING EMPLOYED IN THIS COUNTRY BECAUSE OF VISA OR IMMIGRATION STATUS?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "Yes",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "No",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "EMPLOYMENT DESIRED",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            textfieldWidget(
              strHint: 'Position',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Date you can start',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Salary desired',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Are you employed now?',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'If so may we inquire of your present employer?',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Ever applied to this company before?',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Referred by',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                color: Colors.white,
                // padding: const EdgeInsets.all(20.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Text(
                        "EDUCATION",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "NAME AND LOCATION OF SCHOOL",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "*NO OF YEARS ATTENDED",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "*DID YOU GRADUATE?",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "SUBJECTS STUDIED",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "GRAMMAR SCHOOL",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "HIGH SCHOOL",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "COLLEGE",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "TRADE, BUSINESS OR CORRESPONDENCE SCHOOL",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "GENERAL",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "SUBJECTS OF SPECIAL STUDY OR RESEARCH WORK",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "SPECIAL SKILLS",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ACTIVITIES: (CIVIC ATHLETIC ETC.)",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "EXCLUDE ORGANIZATIONS, THE NAME OF WHICH INDICATES THE RACE, CREED. SEX. AGE, MARITAL STATUS, COLOR OR NATION OF ORIGIN OF ITS MEMBERS.",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            textfieldWidget(
              strHint: 'U. S MILITARY OR NAVAL SERVICE',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'RANK',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'PRESENT MEMBERSHIP IN NATIONAL GUARD OR RESERVES',
              controller: txtFirstName,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "*This form has been revised to comply with the provisions of the Americans with Disabilities Act and the final regulations and interpretive guidance promulgated by the EEOC on July 26. 1991.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "FORMER EMPLOYERS (LIST BELOW LAST THREE EMPLOYERS, STARTING WITH LAST ONE FIRST).",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                color: Colors.white,
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Text(
                        "DATE MONTH AND YEAR",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "NAME AND ADDRESS OF EMPLOYER",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "SALARY",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "POSITION",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "REASON FOR LEAVING",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "FROM",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "TO",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "FROM",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "TO",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "FROM",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "TO",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            textfieldWidget(
              strHint: 'WHICH OF THESE JOBS DlD YOU LIKE BEST?',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'WHAT DlD YOU LIKE MOST ABOUT THIS JOB?',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "REFERENCES: (GIVE THE NAMES OF THREE PERSONS NOT RELATED TO YOU, WHOM YOU HAVE KNOWN AT LEAST ONE YEAR.).",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                color: Colors.white,
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Text(
                        "SNO",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "NAME",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "ADDRESS",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "BUSINESS",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "YEARS ACQUAINTED",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "1",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "2",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "3",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "",
                          labelStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "IN CASE OF EMERGENCY NOTIFY",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            textfieldWidget(
              strHint: 'NAME',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'ADDRESS',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'PHONE NO.',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "I CERTIFY THAT ALL THE INFORMATION SUBMITTED BY ME ON THIS APPLICATION IS TRUE AND COMPLETE, AND I UNDERSTAND THAT IF ANY FALSE INFORMATION, OMISSIONS, OR MISREPRESENTATIONS ARE DISCOVERED, MY APPLICATION MAY BE REJECTED AND, IF I AM EMPLOYED. MY EMPLOYMENT MAY BE TERMINATED AT ANY TIME. I AUTHORIZE THE COMPANY TO INQUIRE INTO MY EDUCATIONAL, PROFESSIONAL AND PAST EMPLOYMENT HISTORY REFERENCES AS NEEDED TO RESEARCH MY QUALIFICATIONS FOR THIS POSITION. I N CONSIDERATION OF MY EMPLOYMENT, I AGREE TO CONFORM TO THE COMPANY'S RULES AND REGULATIONS, AND I AGREE THAT MY EMPLOYMENT AND COMPENSATION CAN BE TERMINATED, WITH OR WITHOUT CAUSE. AND WITH OR WITHOUT NOTICE, AT ANY TIME, AT EITHER MY OR THE COMPANY'S OPTION. I ALSO UNDERSTAND AND AGREE THAT THE TERMS AND CONDITIONS OF MY EMPLOYMENT MAY BE CHANGED, WITH OR WITHOUT CAUSE, AND WITH OR WITHOUT NOTICE, AT ANY TIME BY THE COMPANY. I HEREBY ACKNOWLEDGE THAT I HAVE READ AND FULLY UNDERSTAND THE FOREGOING AND SEEK EMPLOYMENT UNDER THESES CONDITIONS.",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "DO NOT WRITE BELOW THIS LINE",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            textfieldWidget(
              strHint: 'INTERVIEWED BY:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'DATE:',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "REMARKS:",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veritatis, libero! Soluta placeat rerum aliquam necessitatibus ipsa. Quisquam autem deserunt enim?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            textfieldWidget(
              strHint: 'NEATNESS',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'ABILITY',
              controller: txtFirstName,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "HIRED?",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "Yes",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                      child: Text(
                        "No",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            textfieldWidget(
              strHint: 'POSITION',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'DEPT.',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'SALARY/WAGE',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'DATE REPORTING TO WORK',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "APPROVED:",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            textfieldWidget(
              strHint: 'EMPLOYMENT MANAGER',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'DEPT. HEAD',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'GENERAL MANAGER',
              controller: txtFirstName,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "This form has been designed to strictly comply with State and Federal fair employment practice laws prohibiting employment discrimination. This Application for Employment Form is sold for general use throughout the United States. TOPS assumes no responsibility for the inclusion in said form of any questions which, when asked by the Employer of the Job Applicant, may violate State and/or Federal Law.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'CONSENT TO PERFORM CREDIT , BACKGROUND AND REFERENCE CHECK',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const Divider(
              height: 5,
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'I, Aman Sharma (employee) authorize, permit and obtain information about me from credit reporting sources, personal and professional references, employers, and law enforcement agencies I also authorize and give permission for all parties listed to discolose any information requested about me to potential employer (Shree Madhava Management). I further authorize and permit the owner or management to obtain updated information annually should that be deemed necessary. Date of Birth : 19/02/1995, Social Security # : 121212212',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class textfieldWidget extends StatelessWidget {
  textfieldWidget({
    Key? key,
    required this.strHint,
    required this.controller,
  }) : super(key: key);

  final String strHint;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
        labelText: strHint,
        labelStyle: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: Colors.grey, fontSize: kDefaultPadding),
      ),
      cursorColor: Colors.black,
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontSize: kDefaultPadding),
    );
  }
}
