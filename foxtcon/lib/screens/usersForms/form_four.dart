import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';

class FormFourScreen extends StatefulWidget {
  const FormFourScreen({ Key? key }) : super(key: key);

  @override
  _FormFourScreenState createState() => _FormFourScreenState();
}

class _FormFourScreenState extends State<FormFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
        child: ListView(
          children: [
            Text(
              'DRUG FREE WORKPLACE POLICY',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Text(
              'Comfort Suites Speedway, Kansas City Kansas is a drug-free workplace. As such, we prohibit the use of non-prescribed drugs or alcohol during work hours. If the employee comes to work under the influence of drugs or alcohol or uses drugs or alcohol during work time, the employee will be disciplined in accordance to the policy up to an including termination.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text(
              'Shree Ram Management Inc dba Comfort Inn & Suites, (COMPANY) will randomly test employees for compliance with its drug-free workplace policy. As used in this Policy, "random testing" means a method of selection of employees for testing, performed by an outside third party. The selection will result in an equal probability that any employee from a group of employees will be tested. Furthermore Shree Ram Management INC. dba Comfort Inn & Suites has no discretion to waive the selection of an employee selected by this random selection method.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text(
              'All testing will be conducted by a licensed independent medical laboratory, which will follow testing standards established by the State or federal government. Testing will be conducted on a urine sample provided by the employee to the testing laboratory under procedures established by the laboratory to insure privacy of the employee, while protecting against tampering/alteration of the test results.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text(
              'Employees will be considered to be engaged at work for the time spent in taking any tests, and will be compensated for such time at their regular rate.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text('COMPANY will pay for the cost of the testing, including the confirmation of any positive test result by gas chromatography. The testing lab will retain samples in accordance with State law, so that an employee may request a retest of the sample at his/her own expense if the employee disagrees with the test result.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text('I, , acknowledge that I have been advised that I may be required to submit to a drug screen test as part of the Drug and Alcohol Abuse Policy of COMPANY and that such drug test may be a requirement of Company’s random drug testing program. I further understand that the Drug and Alcohol Abuse Policy prohibits the presence of illicit substances in the systems of employees while on the job. A confirmed positive test is a violation of this Policy. Additionally, refusal to test, failure to submit adequate urine to test or an adulterated sample constitute a positive test.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
            Text('I further understand that this analysis will be conducted by a certified laboratory, with all data to be held in confidence except as otherwise necessary to carry out the terms and objectives of the Policy.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
             Text('I understand that it is my responsibility prior to the drug testing to inform the laboratory and/or COMPANY of any medication, prescribed or non-prescribed, that I may be taking and/or have taken within the last 60 days prior to testing.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
             Text('I consent to the release of the results of any drug test to authorized representatives of COMPANY for appropriate review. I release Shree Ram Management INC. dba Comfort Inn & Suites, its affiliates, officers, directors, employees and any person affiliated with the testing from any claims, losses, damages or other liabilities due to any acts, omissions or negligence arising from or related to such testing.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
             Text('I acknowledge that the Drug and Alcohol Policy of COMPANY is to have a drug-free environment. I consent freely and voluntarily to a drug test under the circumstances described above along with all of the terms and conditions of the Drug and Alcohol Policy.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
             Text('I also understand that although I may not agree with the Drug and Alcohol Policy of COMPANY, failure to acknowledge the Policy with my signature below may prohibit my employment with Shree Ram Management INC. dba Comfort Inn & Suites. A copy of this authorization shall be deemed an original and shall be accepted as such by every person.',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}