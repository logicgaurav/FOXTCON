import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/theme.dart';
import 'package:com.foxtcon.foxtconapp/utility/api_endpoint.dart';
import 'package:foxtcon/utility/constants.dart';
import 'package:foxtcon/utility/custom_appbar.dart';
import 'package:foxtcon/utility/show_alert.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:http/http.dart' as http;

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({ Key? key }) : super(key: key);

  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final TextEditingController txtInvoiceDate = TextEditingController();
  final TextEditingController txtInvoiceNumber = TextEditingController();
  final TextEditingController txtNameOfVender = TextEditingController();
  final TextEditingController txtEpenseType = TextEditingController();
  final TextEditingController txtProductService = TextEditingController();
  final TextEditingController txtTypeOfPayment = TextEditingController();
  final TextEditingController txtRefrenceNumber = TextEditingController();
  final TextEditingController txtAmount = TextEditingController();
  final TextEditingController txtStatus = TextEditingController();


  final RoundedLoadingButtonController btnSubmitController =
      RoundedLoadingButtonController();

      Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  expenseAPI(String date, String invoiceNumber, String vendorName, String expenseType, String product,
      String paymentType, String referenceNumber, String amount, String status) async {
    Map<String, dynamic> parameter = {
      "invoice_date": date,
      "invoice_number": invoiceNumber,
      "name_vendor": vendorName,
      "expense_type": expenseType,
      "product": product,
      "type_payment": paymentType,
      "reference_number": referenceNumber,
      "amount": amount,
      "status": status
    };
    print("param sinup$parameter");
    final Uri uri = await getApiURL(API.expense);
    final newURI = uri.replace(queryParameters: parameter);

    var jsonResponse;
    var response = await http.post(newURI);
    print("param sinup${response.statusCode}");
    jsonResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> response = jsonResponse;
      showAlertDialog(context, API.appName, "Success", () {
          btnSubmitController.stop();
        });
      } else {
        showAlertDialog(context, API.appName, "Failed", () {
          btnSubmitController.stop();
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Expense', () {}, Colors.white, Colors.black),
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           textFieldInvoiceWidget(placeholdername: 'Invoice Date', controller: txtInvoiceDate),
            textFieldInvoiceWidget(placeholdername: 'Invoice Number', controller: txtInvoiceNumber),
             textFieldInvoiceWidget(placeholdername: 'Name of vendor', controller: txtNameOfVender),
              textFieldInvoiceWidget(placeholdername: 'Expense type', controller: txtEpenseType),
               textFieldInvoiceWidget(placeholdername: 'Product/Service', controller: txtProductService),
                textFieldInvoiceWidget(placeholdername: 'Type of payment', controller: txtTypeOfPayment),
                 textFieldInvoiceWidget(placeholdername: 'Reference number', controller: txtRefrenceNumber),
                  textFieldInvoiceWidget(placeholdername: 'Amount', controller: txtAmount),
                   textFieldInvoiceWidget(placeholdername: 'Status', controller: txtStatus),
                   const SizedBox(height: 10,),
                  RoundedLoadingButton(
                    child: Text('Submit',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: kDefaultPadding,
                            fontWeight: FontWeight.bold)),
                    controller: btnSubmitController,
                    color: AppColors.mainColor,
                    onPressed: () {
                      if (txtInvoiceDate.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter invoice date", () {});
                        btnSubmitController.stop();
                      } else if (txtInvoiceNumber.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter invoice number", () {});
                        btnSubmitController.stop();
                      } else if (txtNameOfVender.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your vendor name", () {});
                        btnSubmitController.stop();
                      } else if (txtEpenseType.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter expense type", () {});
                        btnSubmitController.stop();
                      } else if (txtProductService.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your product/service", () {});
                        btnSubmitController.stop();
                      } else if (txtTypeOfPayment.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your payment type", () {});
                        btnSubmitController.stop();
                      } else if (txtRefrenceNumber.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter your reference number", () {});
                        btnSubmitController.stop();
                      } else if (txtAmount.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter amount", () {});
                        btnSubmitController.stop();
                      } else if (txtStatus.text.isEmpty) {
                        showAlertDialog(context, API.appName,
                            "Please enter status", () {});
                        btnSubmitController.stop();
                      } else {
                        expenseAPI(txtInvoiceDate.text, txtInvoiceNumber.text, txtNameOfVender.text, txtEpenseType.text, txtProductService.text, txtTypeOfPayment.text, txtRefrenceNumber.text, txtAmount.text, txtStatus.text);
                      }
                    },                      
                  ),
          ],
        ),
      ),
    );
  }
}

class textFieldInvoiceWidget extends StatelessWidget {
  const textFieldInvoiceWidget({
    Key? key, required this.placeholdername, required this.controller,
  }) : super(key: key);

  final String placeholdername;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: TextField(
                controller: controller,
                readOnly: controller.text.isEmpty ? false : true,
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
                  labelText: placeholdername,
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
            );
  }
}