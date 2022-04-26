
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/model/employe_response_model.dart';
import 'package:com.foxtcon.foxtconapp/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:http/http.dart' as http;

class EmployeScreen extends StatefulWidget {
  const EmployeScreen({ Key? key }) : super(key: key);

  @override
  _EmployeScreenState createState() => _EmployeScreenState();
}



class _EmployeScreenState extends State<EmployeScreen> {

  List<EmployeeDatum> emploueList = [];

  @override
  void initState() {
    super.initState();
    getEmployeAPI();
  }

  Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

getEmployeAPI() async {
    final Uri uri = await getApiURL(API.EMPLOYELIST);
    var jsonResponse;
    var response = await http.get(uri);
    print("asafadf${response.statusCode}");
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
       Map<String, dynamic> response = jsonResponse;
      EmployeeResponseModel responseObj =
          EmployeeResponseModel.fromJson(response);
      setState(() {
        emploueList = responseObj.employeeData!;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Employees',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 22),
              ),
              Expanded(
                  child: ListView.builder(
                            itemCount: emploueList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return emploueList.length != 0 ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: NotificationListView(
                                        index: index, imageAvatar: emploueList[index].profilePic ?? "", name: emploueList[index].name ?? "", phone: emploueList[index].phone ?? "", status: emploueList[index].status ?? 0, email: emploueList[index].email ?? "",
                                      ),
                              ) : const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.mainColor),
                      ),
                    );
                            },
                          ),
              ),
            ],
          ),
        ),
    );
  }
}


class NotificationListView extends StatelessWidget {
  const NotificationListView({
    Key? key,
    required this.index, required this.imageAvatar, required this.name, required this.phone, required this.status, required this.email,
  }) : super(key: key);

  final dynamic index;
  final String imageAvatar;
  final String name;
  final String phone;
  final dynamic status;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.purpalWithAlpha,
      child: Column(
        children: [
          Row(
            children: [
           /*   Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(kDefaultPadding * 3),
                    child: Image.network(
                  API.imagePath + imageAvatar,
                  errorBuilder: (context, error, stackTrace) {
                    return const Image(
                      image: AssetImage(imgPlaceholder),height: 50, fit: BoxFit.cover,
                    );
                  },
                  fit: BoxFit.cover,
                  height: 50,
                  ),
                    ),
                  ),
                ),*/
              
              const SizedBox(
                width: kDefaultPadding * 0.5,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18, color: Colors.black),),  
                    SizedBox(height: 8,),
                     Text(phone, style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15, color: Colors.black),),
                    //  SizedBox(height: 8,),
                    //  Text(email, style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15),),
                    //  SizedBox(height: 8,),
                    //  Text(status, style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 15),)
                  ],
                ),
              )
                            
            ],
          ),
         
        ],
      ),
    );
  }
}
