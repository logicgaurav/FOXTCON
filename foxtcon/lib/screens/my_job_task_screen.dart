import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/my_schedule_task_screen.dart';
import 'package:http/http.dart' as http;

import '../model/job_list_model.dart';
import '../utility/api_endpoint.dart';

class MyJobTaskScreen extends StatefulWidget {
  final String userID;

  const MyJobTaskScreen({Key? key, required this.userID}) : super(key: key);

  @override
  _MyJobTaskScreenState createState() => _MyJobTaskScreenState();
}

class _MyJobTaskScreenState extends State<MyJobTaskScreen> {
  Future<List<JobList>> getJobData() async {
    Uri uri = Uri.parse(API.MyJobList + "36");
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
          title: const Text('My Task'),
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
              //debugPrint("Testrrr>>  $data");

              // Extracting data from snapshot object
              var data = snapshot.data as List<JobList>;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  JobList joblistData = data[index];

                  return createViewItem(joblistData, context,index);
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

  Widget createViewItem(JobList jobListData, BuildContext context, int index) {
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
                      "Job Name",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text("  :  "),
                  Padding(
                    child: Text(
                      jobListData.jobName ?? '',
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
                      "Job Description",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text("  :  "),
                  Padding(
                    child: SizedBox(
                      child: Text(
                        jobListData.jobDesc ?? '',
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
                  const Text("  :  "),
                  Padding(
                    child: Text(
                      jobListData.jobDate ?? '',
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
                      "Job Time",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  const Text("  :  "),
                  Padding(
                    child: Text(
                      jobListData.jobTime ?? '',
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
                        acceptDataApi(jobListData);
                      },
                      child: const Text(
                        'Accept',
                      ),
                    ),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Padding(
                    child: ElevatedButton(
                      onPressed: () {
                        rejectDataApi(jobListData);
                      },
                      child: const Text('Reject'),
                    ),
                    padding: const EdgeInsets.all(5.0),
                  ),
                  Padding(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,MyScheduleTaskScreen(userID: "36"));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyScheduleTaskScreen(userID: '36',),
                          ),
                        );
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

  Future<void> acceptDataApi(JobList jobListData) async {

    Uri uri = Uri.parse(API.MyJobAccept + "36/${jobListData.scheduleId}/${jobListData.id}");
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
          content: const Text("Task Accepted Successfully"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(()=>true);
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

  Future<void> rejectDataApi(JobList jobListData) async {
    Uri uri = Uri.parse(API.MyJobReject + "36/${jobListData.scheduleId}/${jobListData.id}");
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
          content: const Text("Task Rejected Successfully"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(()=>true);
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
