import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/theme.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, '', () {},Colors.white, Colors.black),
      body: Center(
        child: Column(
          children: [
             Center(
              child: Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: kDefaultPadding*2, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
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
                    labelStyle: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey, fontSize: kDefaultPadding),),
                    style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: kDefaultPadding),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            InkWell(
              onTap: () {},
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
                    "Submit",
                    style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: kDefaultPadding, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
