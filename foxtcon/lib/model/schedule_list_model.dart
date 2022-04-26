class ScheduleListModel {
  dynamic status;
  dynamic massage;
  List<JobList>? jobList;

  ScheduleListModel({this.status, this.massage, this.jobList});

  ScheduleListModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['massage'] = massage;
    if (jobList != null) {
      data['job_list'] = jobList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JobList {
  dynamic id;
  dynamic scheduleName;
  dynamic cateId;
  dynamic scheduleStatus;
  dynamic scheduleStartdate;
  dynamic createdAt;
  dynamic updatedAt;

  JobList(
      {this.id,
        this.scheduleName,
        this.cateId,
        this.scheduleStatus,
        this.scheduleStartdate,
        this.createdAt,
        this.updatedAt});

  JobList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    scheduleName = json['schedule_name'];
    cateId = json['cate_id'];
    scheduleStatus = json['schedule_status'];
    scheduleStartdate = json['schedule_startdate'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['schedule_name'] = scheduleName;
    data['cate_id'] = cateId;
    data['schedule_status'] = scheduleStatus;
    data['schedule_startdate'] = scheduleStartdate;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}