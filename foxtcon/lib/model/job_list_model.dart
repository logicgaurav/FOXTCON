class JobListModel {
  String? status;
  String? massage;
  List<JobList>? jobList;

  JobListModel({this.status, this.massage, this.jobList});

  JobListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    massage = json['massage'];
    if (json['job_list'] != null) {
      jobList = <JobList>[];
      json['job_list'].forEach((v) {
        jobList!.add(JobList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['massage'] = massage;
    if (jobList != null) {
      data['job_list'] = jobList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JobList {
  int? id;
  String? scheduleId;
  String? jobName;
  String? employeesJob;
  String? jobDesc;
  String? jobDate;
  String? jobTime;
  String? createdAt;
  String? updatedAt;

  JobList(
      {this.id,
        this.scheduleId,
        this.jobName,
        this.employeesJob,
        this.jobDesc,
        this.jobDate,
        this.jobTime,
        this.createdAt,
        this.updatedAt});

  JobList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    scheduleId = json['schedule_id'];
    jobName = json['job_name'];
    employeesJob = json['employees_job'];
    jobDesc = json['job_desc'];
    jobDate = json['job_date'];
    jobTime = json['job_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['schedule_id'] = scheduleId;
    data['job_name'] = jobName;
    data['employees_job'] = employeesJob;
    data['job_desc'] = jobDesc;
    data['job_date'] = jobDate;
    data['job_time'] = jobTime;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
