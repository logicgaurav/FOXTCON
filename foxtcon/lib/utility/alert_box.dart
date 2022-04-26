import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/theme.dart';

class AlertBoxOverlay extends StatefulWidget {
  final String strTitle;
  final String firstButton;
  final String secondButton;
  final Function onClickEvent;
  const AlertBoxOverlay(
      {Key? key,
      required this.strTitle,
      required this.firstButton,
      required this.secondButton,
      required this.onClickEvent})
      : super(key: key);
  @override
  AlertBoxOverlayState createState() => AlertBoxOverlayState();
}

class AlertBoxOverlayState extends State<AlertBoxOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
            scale: scaleAnimation,
            child: SimpleDialog(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text(
                widget.strTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16),
              ),
              children: [
                Container(
                  height: 10,
                ),
                Container(
                  height: 1,
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                SimpleDialogOption(
                  onPressed: () {
                    widget.onClickEvent();
                  },
                  child: Text(
                    widget.firstButton,
                    style: const TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    widget.secondButton,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
