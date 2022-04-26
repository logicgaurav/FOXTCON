import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/profile_response_model.dart';
import 'package:foxtcon/screens/ExpenseScreen.dart';
import 'package:foxtcon/screens/welcome_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/alert_box.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String userID = "";
  late String userName = "";
  late String email = "";
  late dynamic active = 0;
  late String imageAvatar = "";

  Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  profileAPI(String userId) async {
    final Uri uri = await getApiURL(API.PROFILE + "/" + userId);
    var jsonResponse;
    var response = await http.get(uri);
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      ProfileResponseModel responseObj =
          ProfileResponseModel.fromJson(response);
      setState(() {
        userName = responseObj.employeeProfileData!.name ?? "";
        email = responseObj.employeeProfileData!.email ?? "";
        active = responseObj.employeeProfileData!.status ?? 0;
        late String avatar = responseObj.employeeProfileData!.profilePic ?? "";
       // imageAvatar = API.imagePath + avatar;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() {
    Future.delayed(const Duration(microseconds: 200), () async {
      String tempstoreNmae = await getSigninResponse();
      setState(() {
        userID = tempstoreNmae;
        profileAPI(userID);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width - 180,
                color: AppColors.mainColor,
              ),
              Positioned(
                left: 20,
                top: 40,
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
              Positioned(
                left: 130,
                top: 60,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        email,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 8,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$active",
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Entries",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.purpalWithAlpha,
                  ),
                  height: 100,
                  width:
                      MediaQuery.of(context).size.width / 2 - kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage(imgForward),
                        height: 30,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Shared with me",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 15, color: Colors.black),
                      )
                    ],
                  )),
              const Spacer(),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.mainColor,
                  ),
                  height: 100,
                  width:
                      MediaQuery.of(context).size.width / 2 - kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage(imgFolder),
                        height: 35,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "My entries history",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 15),
                      )
                    ],
                  )),
              const Spacer()
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "More",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding,
                right: kDefaultPadding,
                left: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage(imgGraph),
                      height: 15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "My activity",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage(imgUser),
                      height: 20,
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "Personal information",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage(imgSetting),
                      height: 20,
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      "Settings",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage(imgSwitched),
                      height: 30,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Switch company",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 5,
                ),

                InkWell(
                  onTap: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpenseScreen()),
                  );
                  },
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage(imgExpenses),
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Expense",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertBoxOverlay(
                            strTitle: strLogOutMsg,
                            firstButton: "Log Out",
                            secondButton: "Cancel",
                            onClickEvent: () {
                              setLoggedIn(false);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const WelcomeScreen();
                                }),
                              );
                            }));
                  },
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage(imgLogout),
                        height: 20,
                      ),
                      const SizedBox(
                        width: kDefaultPadding,
                      ),
                      Text(
                        "Logout",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
