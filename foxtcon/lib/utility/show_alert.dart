import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/enums/view_state.dart';

Future showAlertDialog(
    BuildContext context, String appName, String msg, Function onClick) async {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(appName),
        content: Text(msg),
        actions: [
          MaterialButton(
            child: const Text('OK'),
            onPressed: () {
              onClick();
              Navigator.of(context).pop(confirmAction.CANCEL);
            },
          ),
        ],
      );
    },
  );
}
