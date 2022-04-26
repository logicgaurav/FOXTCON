class API {
  static const String bearer = "Bearer ";
  static const String appName = "Foxtcon";
  static const String BASE_URL = "https://app.com.foxtcon.foxtconapp.com/api/apixfoxtconxauth/";
  //static const String BASE_URL = "http://127.0.0.1:8000/api/apixfoxtconxauth/";

  //static const String imagePath = "https://foxtcon.com/foxtcon-admin/public/uploads/profile_img/";
  // static const String imagePath = "http://foxtconadmin.digitaladvertisementagency.com/public/uploads/employee/profile/";

  static const String LOGIN = BASE_URL +  "employee-login";
  static const String SIGNUP = BASE_URL + "employee-register";
  static const String PROFILE = BASE_URL + "employee-dashboard";
  static const String EMPLOYELIST = BASE_URL + "employee-list";
  static const String Employee_number_verification = BASE_URL + "employee-number-verification";
  static const String EMPLOYEE_OTP_CHECK = BASE_URL + "employee-otp-check";
  static const String EmployeePDF = BASE_URL + "employee-pdf/";
  static const String ScheduleList = BASE_URL + "schedule/list/";
  static const String MyJobList = BASE_URL + "job/list/";
  static const String MyJobAccept = BASE_URL + "job/accept/";
  static const String MyJobReject = BASE_URL + "job/reject/";
  static const String MyJobTransfer = BASE_URL + "job/exchange/";

  static const String expense = "https://app.com.foxtcon.foxtconapp.com/api/apixfoxtconxauth/expense/addnew/request";
}


