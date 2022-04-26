import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';
import 'package:foxtcon/utility/string_and_image.dart';

AppBar buildAppBar(BuildContext context, String title, Function onClickBack, Color setColor, Color arrow) {
  return AppBar(
    elevation: 0,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 20, color: Colors.black,),
    ),
    backgroundColor: setColor,
    centerTitle: false,
    leading: InkWell(
      onTap: () {
        onClickBack();
      },
      child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Image.asset(arrow == Colors.white ? imgBackWhite : imgBack,
                height: kDefaultPadding * 1.5,
                width: kDefaultPadding * 1.5,
              )),
    ),
    actions: [
    ],
  );
}


