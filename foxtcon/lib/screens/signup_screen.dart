import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/enums/view_state.dart';
import 'package:com.foxtcon.foxtconapp/model/login_response_model.dart';
import 'package:foxtcon/model/otp_response_model.dart';
import 'package:foxtcon/screens/success_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/show_alert.dart';
import 'package:foxtcon/utility/string_and_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:country_picker/country_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  //PhoneNumber number = PhoneNumber(isoCode: 'US');
  int _value = 1;
  final List<Attech> _allAttech = Attech.allAttech();

  final imgPicker = ImagePicker();
  //XFile? imgFile;

  XFile? _image;
  XFile? _ssnImage;
  XFile? _identyImage;
  String? countryName = "US";

  late String phoneNumber;
  late String birthDateInString;
  late DateTime birthDate;
  late String selectedGender = "male";

  final TextEditingController txtemail = TextEditingController();
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtLastName = TextEditingController();
  final TextEditingController txtdob = TextEditingController();
  final TextEditingController txtPhone = TextEditingController();
  final TextEditingController txtCountry = TextEditingController();
  final TextEditingController txtSSn = TextEditingController();

  final RoundedLoadingButtonController _btnSignupController =
      RoundedLoadingButtonController();

  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () async {
      getOTPSigninResponse().then((value) => setState(() {
            OtpResponseModel user =
                OtpResponseModel.fromJson(jsonDecode(value));
            final userList = user.employeeData!;
            setState(() {
              txtName.text = userList.name ?? "";
              txtLastName.text = userList.lastName ?? "";
              txtemail.text = userList.email ?? "";
              txtPhone.text = userList.phone ?? "";
            });
          }));
    });
  }

  _imgFromCamera(String type) async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if(type == "ssn"){
        _ssnImage = photo;
      } else if(type == "identity"){
        _identyImage = photo;
      } else {
        _image = photo;
      }
    });
  }

  _imgFromGallery(String type) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(type == "ssn"){
        _ssnImage = image;
      } else if(type == "identity"){
        _identyImage = image;
      } else {
        _image = image;
      }
    });
  }

  void _showPicker(context, type) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Photo Library'),
                    onTap: () {
                      _imgFromGallery(type);
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    _imgFromCamera(type);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  signupAPI(String name, String email, String phone, String gender, String dob,
      String countrycode, String img, String ssn, String ssnImg, String identityImg) async {
    Map<String, dynamic> parameter = {
      "reg-ssn": ssn,
      "reg-email": email,
      "reg-gender": gender,
      "reg-dob": dob,
      "reg-country": txtCountry.text,
      "reg-profile-pic": img,
      "ssn_upload": ssnImg,
      "identity_upload": identityImg
    };
    print("param sinup => $parameter");
    print("param Image1 => $img");
    print("param Image2 => $ssnImg");
    print("param Image3 => $identityImg");
    late String strApi = "${API.SIGNUP}/${phone}";

    final Uri uri = await getApiURL(strApi);
    //final newURI = uri.replace(queryParameters: parameter);

     var jsonResponse;
   // var response = await http.get(newURI);
    print("api uri ==> $uri");
    var request =  http.MultipartRequest("POST", uri);
    request.fields['reg-ssn'] = ssn;
    request.fields['reg-email'] = email;
    request.fields['reg-gender'] = gender;
    request.fields['reg-dob'] = dob;
    request.fields['reg-country'] = ssn;

    request.files.add(await http.MultipartFile.fromPath('reg-profile-pic',img));
    request.files.add(await http.MultipartFile.fromPath('ssn_upload',ssnImg));
    request.files.add(await http.MultipartFile.fromPath('identity_upload',identityImg));

  var response = await  request.send();
    print("param sinup ==> ${response.statusCode}");


    final respStr = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      jsonResponse = json.decode(respStr);
      print("param sinup ==> ${jsonResponse}");

      Map<String, dynamic> response = jsonResponse;
      LoginResponseModel responseObj = LoginResponseModel.fromJson(response);
      if (responseObj.status == "1") {
        setSignupDone(true);
        _btnSignupController.success();
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => SuccessScreen(message: responseObj.massage ?? ""),
          ),
        );
        _btnSignupController.stop();
        // showAlertDialog(context, API.appName, responseObj.massage ?? "", () {


        // });
      } else {
        showAlertDialog(context, API.appName, responseObj.massage ?? "", () {
          _btnSignupController.stop();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar:
            buildAppBar(context, '', () {}, AppColors.mainColor, Colors.white),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: ClipOval(
                      child: _image == null
                          ? Image.asset(
                              imgPlaceholder,
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              File(_image!.path),
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                      bottom: 1,
                      right: 1,
                      child: InkWell(
                        onTap: () {
                          _showPicker(context, "");
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                          decoration: const BoxDecoration(
                              color: AppColors.bgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.white, Colors.white])),
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtName,
                      readOnly: txtName.text.isEmpty ? false : true,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Firs Name",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtLastName,
                      readOnly: txtLastName.text.isEmpty ? false : true,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Last Name",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtdob,
                      readOnly: true,
                      onTap: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1980),
                          lastDate: DateTime.now(),
                        ).then((selectedDate) {
                          if (selectedDate != null) {
                            txtdob.text =
                                "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
                          }
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabled: true,
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "DOB",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Row(
                      children: [
                        MyRadioListTile<int>(
                          value: 1,
                          groupValue: _value,
                          title: Text(
                            'Male',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: Colors.grey,
                                    fontSize: kDefaultPadding),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedGender = "male";
                              _value = value!;
                            });
                          },
                        ),
                        MyRadioListTile<int>(
                          value: 2,
                          groupValue: _value,
                          title: Text(
                            'Female',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: Colors.grey,
                                    fontSize: kDefaultPadding),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedGender = "female";
                              _value = value!;
                            });
                          },
                        ),
                        MyRadioListTile<int>(
                          value: 3,
                          groupValue: _value,
                          title: Text(
                            'Other',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: Colors.grey,
                                    fontSize: kDefaultPadding),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedGender = "other";
                              _value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  /*Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtPhone,
                      readOnly: txtPhone.text.isEmpty ? false : true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Phone number",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: kDefaultPadding, color: Colors.black),
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                              flagSize: 25,
                              backgroundColor: Colors.white,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(color: Colors.black, fontSize: 15),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              inputDecoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.mainColor),
                                ),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusColor: Colors.black,
                                fillColor: Colors.black,
                                labelText: "Search Country",
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        color: Colors.grey,
                                        fontSize: kDefaultPadding),
                              ),
                            ),
                            onSelect: (Country country) =>
                                txtPhone.text = "+" + country.phoneCode);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber number) {
                              setState(() {
                                phoneNumber = number.toString();
                              });
                            },
                            onInputValidated: (bool value) {},
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: kDefaultPadding),
                            cursorColor: Colors.black,
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle:
                                const TextStyle(color: Colors.black),
                            initialValue: number,
                            textFieldController: controller,
                            formatInput: false,
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            inputDecoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.mainColor),
                              ),
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusColor: Colors.black,
                              fillColor: Colors.black,
                              labelText: "Phone Number",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontSize: kDefaultPadding),
                            ),
                            onSaved: (PhoneNumber number) {},
                          ),
                        ],
                      ),
                    ),
                  ),*/
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtPhone,
                      readOnly: txtPhone.text.isEmpty ? false : true,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Phone number",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtemail,
                      readOnly: txtemail.text.isEmpty ? false : true,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Email",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: SizedBox(
                      child: TextField(
                        controller: txtCountry,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "Country",
                          labelStyle: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  color: Colors.grey,
                                  fontSize: kDefaultPadding),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: kDefaultPadding, color: Colors.black),
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              showPhoneCode: false,
                              countryListTheme: CountryListThemeData(
                                flagSize: 25,
                                backgroundColor: Colors.black,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 15),
                                inputDecoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.mainColor),
                                    ),
                                    border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    suffixStyle: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: Colors.black, fontSize: 15),
                                    hintText: "Search Country",
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: Colors.grey,
                                            fontSize: kDefaultPadding),
                                    filled: true,
                                    hoverColor: Colors.black),
                              ),
                              onSelect: (Country country) =>
                                  txtCountry.text = country.name);
                        },
                      ),
                    ),
                    /* child: InkWell(
                      onTap: () {
                        DropdownSearch<String>(
                          //mode of dropdown
                          mode: Mode.DIALOG,
                          //to show search box
                          showSearchBox: true,
                          //showSelectedItem: true,
                          //list of dropdown items
                          items: counntryNameList,
                          label: "Country",
                          onChanged: (value) {
                            txtCountry.text = value ?? "";
                          },
                          //show selected item
                          selectedItem: "US",
                        );
                      },
                      child: TextField(
                        controller: txtCountry,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.mainColor),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          labelText: "Select Country",
                          labelStyle: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  color: Colors.grey,
                                  fontSize: kDefaultPadding),
                        ),
                        cursorColor: Colors.black,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: kDefaultPadding),
                      ),
                    ),*/
                  ),
                  /*Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "Password",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),*/
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: txtSSn,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.mainColor),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        labelText: "SSN",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(
                                color: Colors.grey, fontSize: kDefaultPadding),
                      ),
                      cursorColor: Colors.black,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: kDefaultPadding),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          _showPicker(context, "ssn");
                        },
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                child: _ssnImage == null
                              ? Image.asset(
                                  imgPlaceholder,
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(_ssnImage!.path),
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Upload SSN", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          _showPicker(context, "identity");
                        },
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                child: _identyImage == null
                              ? Image.asset(
                                  imgPlaceholder,
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(_identyImage!.path),
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Upload Identity", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey, fontSize: 15),)
                          ],
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  const SizedBox(height: 10,),
                  RoundedLoadingButton(
                    child: Text('Sign In',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: kDefaultPadding,
                            fontWeight: FontWeight.bold)),
                    controller: _btnSignupController,
                    color: AppColors.mainColor,
                    onPressed: () {
                      if (txtName.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your first name", () {});
                        _btnSignupController.stop();
                      } else if (txtLastName.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your last name", () {});
                        _btnSignupController.stop();
                      } else if (txtdob.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your DOB", () {});
                        _btnSignupController.stop();
                      } else if (txtPhone.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your phone number", () {});
                        _btnSignupController.stop();
                      } else if (txtemail.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your email", () {});
                        _btnSignupController.stop();
                      } else if (txtSSn.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your ssn", () {});
                        _btnSignupController.stop();
                      } else {
                        signupAPI(
                            "${txtName.text} ${txtLastName.text}",
                            txtemail.text,
                            txtPhone.text,
                            selectedGender,
                            txtdob.text,
                            txtCountry.text,
                            _image?.path ?? "",
                            txtSSn.text,
                            _ssnImage?.path ?? "",
                            _identyImage?.path ?? "");

                        print("param Image11 => ${_image?.path}");
                        print("param Image22 => ${_ssnImage?.path}");
                        print("param Image33 => ${_identyImage?.path}");

                      }
                    },
                  ),
                  /* InkWell(
                    onTap: () {
                      signupAPI(
                          "${txtName.text} ${txtLastName.text}",
                          txtemail.text,
                          txtPhone.text,
                          txtPassword.text,
                          selectedGender,
                          txtdob.text,
                          "INR",
                          _image!.path);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        padding: const EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(
                                    fontSize: kDefaultPadding,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ))
          ],
        ));
  }
}

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final Widget? title;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _customRadioButton,
            const SizedBox(width: 12),
            if (title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      height: 20,
      width: 20,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.mainColor : null,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? AppColors.mainColor : Colors.grey,
          width: 2,
        ),
      ),
    );
  }
}

class Attech {
  final String title;
  final PhotoAttechOption settingsOption;
  Attech({required this.title, required this.settingsOption});

  static List<Attech> allAttech() {
    var listOfAttech = <Attech>[];
    listOfAttech
        .add(Attech(title: "Camera", settingsOption: PhotoAttechOption.camera));
    listOfAttech.add(Attech(
        title: "Choose from gallery",
        settingsOption: PhotoAttechOption.chooseFromGallery));
    return listOfAttech;
  }
}
