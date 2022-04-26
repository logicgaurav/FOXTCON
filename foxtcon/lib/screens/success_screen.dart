import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/login_screen.dart';
import 'package:foxtcon/screens/otp_genret_screen.dart';

class SuccessScreen extends StatefulWidget {
  final String message;

  const SuccessScreen({ Key? key, required this.message }) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>
         const OtpGenretScreen()
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child:   Scaffold(
        body: Center(
          child: Text(widget.message, style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15, color: Colors.black),),
        ),
      ),
    );
  }
}

