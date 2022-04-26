
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart' show rootBundle;
import 'package:com.foxtcon.foxtconapp/utility/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatScreen extends StatefulWidget {
  final String userID;
  const ChatScreen({Key? key, required this.userID}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final key = UniqueKey();
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, 'Chat', () {}, Colors.white, Colors.black),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 16 * 1.2, vertical: 16),
          child: WebView(
            key: key,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'http://foxtconchat.digitaladvertisementagency.com/chat/login/test@gmail.com',
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        )));
  }
}


// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   late WebViewController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 4,
//           title: const Text(
//             'Chat',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600),
//           ),
//           centerTitle: true,
//           leading: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               ),
//               onPressed: () {}),
//         ),
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Container(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 10 * 1.2, vertical: 10),
//             child: WebView(
//               initialUrl: 'http://chat.foxtcon.com/api/chat/user/login/ms@gmail.com',
//               onWebViewCreated: (WebViewController webViewController) {
//                 controller = webViewController;
//                // _loadHtmlFromAssets();
//               },
//             ),
//           ),
//         ));
//   }
// }
