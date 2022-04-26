import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/employe_response_model.dart';
import 'package:foxtcon/model/profile_response_model.dart';
import 'package:com.foxtcon.foxtconapp/screens/chat_screen.dart';
import 'package:foxtcon/screens/employe_list_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:http/http.dart' as http;

import 'my_job_task_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late String userID = "";
  late String userName = "";
  late String email = "";
  late String active = "";
  late String imageAvatar = "";
  List<EmployeeDatum> emploueList = [];

  getUserData() async {
    await getEmployeAPI();

    Future.delayed( Duration.zero, () async {
      userID = await getUserId();

      setState(() {
        // userID = userId;
        profileAPI(userID);
        debugPrint("TestttttttttId>>  $userID");

      });
    });
  }

  Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  getEmployeAPI() async {
    final Uri uri = await getApiURL(API.EMPLOYELIST);
    print("get urlhgv hbhnbhn b-->$uri");
    var jsonResponse;
    var response = await http.get(uri);
    print("get urlhgv hbhnbhn b-->$response");
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      EmployeeResponseModel responseObj =
      EmployeeResponseModel.fromJson(response);
      print("asafadf$response");
      setState(() {
        emploueList = responseObj.employeeData;
        print("asafadfggggg => ${emploueList.first.id}");
userID = emploueList.first.id;
      });
    }
  }

  profileAPI(String userId) async {
    final Uri uri = await getApiURL(API.PROFILE + "/" + userId);
    print("get url-->$uri");
    var jsonResponse;
    var response = await http.get(uri);
    try{
      jsonResponse = json.decode(response.body);

    } on Exception catch (_) {
      print("throwing new error");
      throw Exception("Error on server");
    }
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      ProfileResponseModel responseObj =
      ProfileResponseModel.fromJson(response);
      setState(() {
        // late String avatar = responseObj.employeeProfileData!.profilePic ?? "";
        // imageAvatar = API.imagePath + avatar;
        print("get url-->$imageAvatar");
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    //Get User ID
    // debugPrint("Uid"+);
    return Scaffold(

      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
              const Text(
                'Good evening,Sunny ',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 3.5,
                height: MediaQuery
                    .of(context)
                    .size
                    .width / 3.5,
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network(
                    imageAvatar,
                    errorBuilder: (context, error, stackTrace) {
                      return const Image(
                        image: AssetImage(imgPlaceholder),
                        height: 100,
                      );
                    },
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Column(
                        children: [

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyJobTaskScreen(userID: userID,)),
                              );
                            }, // Image tapped
                            splashColor: Colors.white10, // Splash color over image
                            child: Ink.image(
                              fit: BoxFit.cover, // Fixes border issues
                              width: 70,
                              height: 70,
                              image: const AssetImage(imgQuickTask),
                            ),
                          ),
                         /* const Image(
                            image: AssetImage(imgQuickTask),
                            height: 70,
                          ),*/
                          Text(
                            "Quick Tasks",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChatScreen(userID: userID,)),
                        );
                      },
                      child: Column(
                        children: [
                          const Image(
                            image: AssetImage(imgChatDash),
                            height: 70,
                          ),
                          Text(
                            "Chat",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        const Image(
                          image: AssetImage(imgCallDash),
                          height: 70,
                        ),
                        Text(
                          "Directory",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        const Image(
                          image: AssetImage(imgCalender),
                          height: 70,
                        ),
                        Text(
                          "My Schedule",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          /*Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Expanded(
              child: ListView.builder(
                itemCount: emploueList.length,
                itemBuilder: (BuildContext context, int index) {
                  return emploueList.isNotEmpty
                      ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: NotificationListView(
                      index: index,
                      imageAvatar: emploueList[index].profilePic ?? "",
                      name: emploueList[index].name ?? "",
                      phone: emploueList[index].phone ?? "",
                      status: emploueList[index].status ?? "",
                      email: emploueList[index].email ?? "",
                    ),
                  )
                      : const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.mainColor),
                    ),
                  );
                },
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

// CustomPainter class to for the header curved-container
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.mainColor;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
