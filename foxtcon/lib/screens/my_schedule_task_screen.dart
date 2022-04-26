import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/schedule_list_model.dart';
import '../utility/api_endpoint.dart';

class MyScheduleTaskScreen extends StatefulWidget {
  final String userID;

  MyScheduleTaskScreen({Key? key, required this.userID}) : super(key: key);

  @override
  _MyScheduleTaskState createState() => _MyScheduleTaskState();
}

class _MyScheduleTaskState extends State<MyScheduleTaskScreen> {
  Future<List<JobList>> getJobData() async {
    Uri uri = Uri.parse(API.ScheduleList + "36");
    var result = await http.get(uri);

    List<JobList> _jobList = [];
    if (result.statusCode == 200) {
      var responseJson = json.decode(result.body);
      var jobList = responseJson['job_list'];

      jobList.map((m) {
        debugPrint("Test>>  $m");
        _jobList.add(JobList.fromJson(m));
        return JobList.fromJson(m);
      }).toList();

      return _jobList;
    }

    return throw Exception('Failed to load album');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Employee List'),
        ),
        body: FutureBuilder(
          future: getJobData(),
          builder: (ctx, snapshot) {
            if (snapshot.hasError) {
              debugPrint("Testrr>>");

              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: const TextStyle(fontSize: 18, color: Colors.red),
                ),
              );

              // if we got our data
            } else if (snapshot.hasData) {
              // Extracting data from snapshot object
              var data = snapshot.data as List<JobList>;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  JobList joblistData = data[index];
                  debugPrint("Testgk>>  ${joblistData.id}");

                  return createViewItem(joblistData, context);
                },
              );
            }

            // Displaying LoadingSpinner to indicate waiting state
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Widget createViewItem(JobList jobListData, BuildContext context) {
    Color ccdcdc = const Color.fromARGB(0xF6, 0xF6, 0xF6, 0xF6);

    return ListTile(
      title: Card(
        shadowColor: Colors.grey,
        color: ccdcdc,
        elevation: 5.0,
        child: Container(
        //  decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Padding(
                    child: Text(
                      "Schedule Name",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text(" : "),
                  Padding(
                    child: Text(
                      jobListData.scheduleName ?? '',
                      style: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),
                    padding: const EdgeInsets.all(1.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Padding(
                    child: Text(
                      "Schedule Status",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text(" : "),
                  Padding(
                    child: SizedBox(
                      child: Text(
                        jobListData.scheduleStatus ?? '',
                        style: const TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.right,
                        // maxLines: 3,
                      ),
                    ),
                    padding: const EdgeInsets.all(1.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Padding(
                    child: Text(
                      "Job date",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text(" : "),
                  Padding(
                    child: Text(
                      jobListData.scheduleStartdate ?? '',
                      style: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),
                    padding: const EdgeInsets.all(1.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    child: ElevatedButton(
                      onPressed: () {
                        transferDataApi(jobListData);
                      },
                      child: const Text('Transfer'),
                    ),
                    padding: const EdgeInsets.all(5.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> transferDataApi(JobList jobListData) async {
    Uri uri = Uri.parse(
        API.MyJobTransfer + "36/${jobListData.id}/${jobListData.cateId}");
    // var result = await http.get(uri);

    var response = await http.get(uri);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      //Or put here your next screen using Navigator.push() method
      print('success');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text("Task Exchanged Successfully"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK')),
          ],
        ),
      );
    } else {
      print('error');
    }
  }
}
