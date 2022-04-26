import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/usersForms/form_one.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/string_and_image.dart';

class FormTwo extends StatefulWidget {
  const FormTwo({ Key? key }) : super(key: key);

  @override
  _FormTwoState createState() => _FormTwoState();
}

class _FormTwoState extends State<FormTwo> {

  final TextEditingController txtFirstName = TextEditingController();
  bool isChecked = false;

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
            const Image(image: AssetImage(imgADP),height: 60,),
            Text(
                'Employee Direct Deposit Enrollment Form',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const Divider(height: 5,color: Colors.black,),
              const SizedBox(height: 20,),
              Text(
                'Payroll Manager – Please complete this section and send a copy to ADP for enrollment. (Please print.)',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              textfieldWidget(
              strHint: 'Company Code:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Company Name:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Employee File Number:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Payroll Mgr. Name:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Payroll Mgr. Signature',
              controller: txtFirstName,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "To enroll in Full Service Direct Deposit, simply fill out this form and give to your payroll manager. Attach a voided check for each checking account - not a deposit slip. If depositing to a savings account, ask your bank to give you the Routing/Transit Number for your account. It isn’t always the same as the number on a savings deposit slip. This will help ensure that you are paid correctly.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Below is a sample check MICR line, detailing where the information necessary to complete this form can be found.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 16,),
             const Image(image: AssetImage(imgMemo),),
             const Divider(height: 20, color: Colors.black,),
             Text(
                'Account Information',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "The last item must be for the remaining amount owed to you. To distribute to more accounts, please complete another form.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                  'Make sure to indicate what kind of account, along with amount to be deposited, if less than your total net paycheck.',
                  style:
                      Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('1.',
                  style:
                      Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
            ),
            textfieldWidget(
              strHint: 'Bank Name/City/State',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Routing Transit #:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Account Number:',
              controller: txtFirstName,
            ),
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
                        "Checking",
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
                        "Savings",
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
                        "Other",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                textfieldWidget(
              strHint: 'I wish to deposit:',
              controller: txtFirstName,
            ),
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
                        "Entire Net Amount",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('2.',
                  style:
                      Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
            ),
            textfieldWidget(
              strHint: 'Bank Name/City/State',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Routing Transit #:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Account Number:',
              controller: txtFirstName,
            ),
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
                        "Checking",
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
                        "Savings",
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
                        "Other",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                textfieldWidget(
              strHint: 'I wish to deposit:',
              controller: txtFirstName,
            ),
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
                        "Entire Net Amount",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('3.',
                  style:
                      Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
            ),
            textfieldWidget(
              strHint: 'Bank Name/City/State',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Routing Transit #:',
              controller: txtFirstName,
            ),
            textfieldWidget(
              strHint: 'Account Number:',
              controller: txtFirstName,
            ),
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
                        "Checking",
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
                        "Savings",
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
                        "Other",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                textfieldWidget(
              strHint: 'I wish to deposit:',
              controller: txtFirstName,
            ),
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
                        "Entire Net Amount",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.start,
                      ),
                    ),
              ],
            ),
             Text(
                'ATTENTION PAYROLL MANAGER:',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16,),
               Text(
                'Employers must keep each original employee enrollment form on file as long as the employee is using FSDD, and for two years thereafter.',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16,),
               Text(
                'ADP is a registered trademark of ADP of North America Inc.',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 16,),
              Text(
                'Full Service Direct Deposit (FSDD) is a service mark of Automatic Data Processing, Inc.',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 16,),
              Text(
                '02-184-049 10M Printed in USA ©1999, 1998 Automatic Data Processing, Inc.',
                style:
                    Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                textAlign: TextAlign.start,
              ),
          ],
        ),
      ),
    );
  }
}