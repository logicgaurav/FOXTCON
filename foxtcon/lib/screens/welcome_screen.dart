import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/bottom_bar_screen.dart';
import 'package:foxtcon/screens/chat_screen.dart';
import 'package:foxtcon/screens/dashbard_screen.dart';
import 'package:foxtcon/screens/login_screen.dart';
import 'package:foxtcon/screens/my_job_task_screen.dart';
import 'package:foxtcon/screens/otp_genret_screen.dart';
import 'package:foxtcon/screens/signup_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final RoundedLoadingButtonController _btnSignInController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnSignUpController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const Image(
                image: AssetImage(imgWelcome),
                height: 250,
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              Center(
                child: Text(strWelcomeToEmployee,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: kDefaultPadding * 1.5)),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(strManageMent,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: kDefaultPadding * 1.3)),
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              /*RoundedLoadingButton(
                child: Text('Sign In',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: kDefaultPadding,
                        fontWeight: FontWeight.bold)),
                controller: _btnSignInController,
                color: AppColors.mainColor,
                onPressed: () {
                  _btnSignInController.stop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),*/
              const SizedBox(
                height: kDefaultPadding,
              ),
              RoundedLoadingButton(
                child: Text('Sign In',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: kDefaultPadding,
                        fontWeight: FontWeight.bold, color: AppColors.mainColor)),
                controller: _btnSignUpController,
                color: AppColors.purpalWithAlpha,
                onPressed: () {
                  _btnSignUpController.stop();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtpGenretScreen()),
                  );
                },
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
