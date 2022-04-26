import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/utility/constants.dart';

class FormThreeScreen extends StatefulWidget {
  const FormThreeScreen({ Key? key }) : super(key: key);

  @override
  _FormThreeScreenState createState() => _FormThreeScreenState();
}

class _FormThreeScreenState extends State<FormThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
        child: ListView(
          children: [
            Text(
              'Shree Ram Management INC. dba Comfort Inn & Suites (Company)',
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Text(
              'POLICIES AND WORK RULES',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
             Text(
              'SECTION 1. Introduction',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
             const SizedBox(height: 8,),
             Text(
                "This general information concerning the Company policies and work rules is provided to help employees understand their relationship with the Company. The success of the Company and its employees depends upon the cooperation of all. To achieve this, there must be Company procedures and policies to maintain order, safety, and effective operations. Everyone must know, understand and follow these procedures and policies.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
                "Set forth are examples of Company procedures and policies. THIS LIST IS NOT ALL-INCLUSIVE AND IS INTENDED TO BE A GUIDELINE ONLY. NO EMPLOYMENT CONTRACT IS INTENDED TO BE CREATED BY THESE PROCEDURES AND POLICIES, AND THEY ARE NOT TO BE CONSTRUED AS CREATING ANY CONTRACTUAL COMMITMENTS. EMPLOYMENT WITH THE COMPANY IS AT- WILL; THAT IS, EITHER THE EMPLOYEE OR THE COMPANY MAY TERMINATE EMPLOYMENT AT ANY TIME, FOR ANY REASON OR NO REASON, WITH OR WITHOUT NOTICE. More detailed information regarding these procedures and policies should be directed to the employee’s supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
                "These written policies should increase understanding, eliminate the need for personal decision on matters of policies and promote organizational harmony and efficiency. It is the responsibility of every member of the Company to administer these policies in a consistent and impartial manner.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
                "Procedures and practices in the field of personnel relations are always subject to modification and further development in the light of experience. The Company, at its discretion, retains the right to grant, deny, or change any of the policies, practices, procedures or benefits listed in the policy handout by notifying its employees of any such action.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
                "The Company reserves the right to revoke, discontinue or modify any policy at its sole discretion with or without notice.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
              'SECTION 2. Employee Relations and Communications',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
             Text(
                "The company strives to treat each employee as an individual in all matters, consistent with a uniform application of the personnel policies. Management strives to maintain an atmosphere that enables employees to be informed of their part in the successful operation of the Company’s endeavors.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
             Text(
                "Communication is a two-way process; therefore, each employee is encouraged to express ideas, complaints, suggestions and opinions to the appropriate level supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
             Text(
              'SECTION 3. Distribution of the Policy Handout and Supplements',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
             Text(
                "This policy handout shall be issued to each employee to serve as a source of information the employee can look to with authority and completeness. This policy handout shall be given to employees at the beginning of their employment. It shall be the responsibility of the immediate supervisor to see that each employee receives a copy of the policy handout.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
              Text(
                "These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
              Text(
                "From time to time employees may receive supplements to the policy handout. These supplements will update and revise present policy and practices. Each employee should study the revised supplements carefully prior to placing them in the policy handout and remove old policy statements and procedures. An employee who has any questions concerning the interpretation, intent or procedure to follow in these supplements should ask their immediate supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
              Text(
                "Occasionally a situation may arise which may not be covered in this policy handout, or in the employee’s opinion may deserve special consideration because of unusual circumstances. These situations should be referred to the immediate supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text(
              'SECTION 4. Equal Employment Opportunity',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
             Text(
                "The company strives to treat each employee as an individual in all matters, consistent with a uniform application of the personnel policies. Management strives to maintain an atmosphere that enables employees to be informed of their part in the successful operation of the Company’s endeavors.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
              Text(
                "Communication is a two-way process; therefore, each employee is encouraged to express ideas, complaints, suggestions and opinions to the appropriate level supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 5. Smoking',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Smoking is not allowed in any Company area, including Company vehicles.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 6. Confidentiality',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Each employee must conduct their affairs in such a manner as to win and maintain the goodwill and confidence of each customer and the public. The conduct and performance of each employee is a part of the total impression the Company makes on the public.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "Employees will have access to many kinds of confidential information about customers/clients. This information is strictly confidential. Every employee has an obligation to protect the Company’s customers/clients against disclosure of any information, particularly individual transactions. Such information must not be disclosed to or discussed with a third party, not even another employee, unless on official business and a need to know basis. If an employee has any questions concerning what information can be discussed, they should check first with their immediate supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "Employees will have access to many kinds of confidential information about customers/clients. This information is strictly confidential. Every employee has an obligation to protect the Company’s customers/clients against disclosure of any information, particularly individual transactions. Such information must not be disclosed to or discussed with a third party, not even another employee, unless on official business and a need to know basis. If an employee has any questions concerning what information can be discussed, they should check first with their immediate supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "Unauthorized disclosure of confidential information is grounds for disciplinary action. In addition, unauthorized disclosure may subject the employee to criminal and civil liability.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 20,),
            Text(
                "These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 7. New Employees',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "The first days of employment are very important to the employee and the Company. During this period the employee has the chance to become familiar with the new work and the supervisor can determine whether the interests, skills, and talents of the employee are compatible to the job. If the employee cannot adapt to the job requirements, both the employee and the supervisor should discover this as soon as possible. . The Company, within the scope of the needs of the business, will strive to meet with new employees at the end of their first Ninety (90) days of employment to review their employment status and compatibility with the job. However, an absence of such employee review should not be considered an indication or a statement of the company that employee has met all expectations.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "All factors involved in the employee being able to make a positive contribution to the company will be considered. These include, but are not limited to, productivity, quality of work, punctuality, attendance, ability to learn, initiative, attitude, and conduct.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 8. Absenteeism',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Employees are required to report all absences to their supervisor prior to the beginning of the workday. Employees with excessive and/or unexcused absences will be subject to disciplinary action. The Company requires a doctor’s excuse following two consecutive absences to verify the absence.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 9. Dress Code',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "It is important that each employee recognize that good judgment must be used in maintaining a neat, businesslike and professional appearance. Customers and clients rightfully expect persons handling their affairs to be clean and well groomed. The employee often determines their attitude toward the Company. If a uniform is issued to the employee is asked to make sure it is laundered and ready for the type of work to be done and the environment in which work is performed. Clothing must be neat, clean, ironed and in good taste.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 10. Seat Belts',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Every employee is required to wear a seat belt at all times when a driver or passenger in a Company vehicle or personal vehicle used for company business.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 11. Telephone Courtesy',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "All employees should speak in a friendly, business like manner on the telephone. The name of the caller should always be obtained. If information is requested and the matter is NOT confidential, an answer should be given as soon as possible. Callers should be routed to the appropriate person as requested, or for information. If the inquiry will take some time to answer, the caller’s telephone number should be obtained and the call returned as soon as possible.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "An employee should never guess at an answer. If the subject of the telephone call is something with which the employee is not familiar, it should then be referred to the supervisor. Only company officers should talk with an attorney unless otherwise directed.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
            Text(
                "These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 12. Personal Telephone Calls and Visitors',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Numerous personal telephone conversations and personal visitors can detract from the efficient operation of the hotel. The Company recognizes that there are times when an employee must take care of personal business during working hours. Employees should keep this to an absolute minimum and make every effort to handle their personal business during their breaks. There should be no personal visitors at any time. All employees should ask family and friends not to call or come to their job during working hours unless necessary. Abuse of this privilege may be grounds for disciplinary action.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 13. Courtesy to Customers/Clients',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Our customers are entitled to expect and receive courtesy and consideration from all employees in their transactions and contacts with the Company. A friendly attitude and a sincere interest in helping others will create goodwill for each employee as well as produce a more pleasant atmosphere in which to work. Discourtesy to a customer/client is a serious matter and may result in disciplinary action.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
            Text(
                "Customers may be confused as to reasons for actions or the proper employee to handle their requests. Every employee must work to enlighten and resolve the requests and problems of the customer/client or to refer the customer to the proper authority.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 14. Personnel Records',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Detailed personnel records are very valuable to an employee, especially in an emergency. The supervisor should be notified of any changes that might affect withholding taxes or other personal records such as name, address, telephone number, marital status, or number of dependents. It is the obligation of the employee to notify the company in the event of an emergency. It is the obligation of the employee to help keep the personnel records current, accurate and complete.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "The Company recognizes the individual employee’s right to privacy. To achieve this goal, the following principles have been adopted:",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "1. Only relevant information will be requested.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "2. The company will strive to protect the confidentially of its records.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "3. The availability of personal information will be limited to those management personnel with a “need to know",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "4. The release of information to outside sources will require a written release of the employee, unless for a bonified managerial purpose, or as required by law.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "An employee may request to examine their employee records in the presence of the supervisor. Records exempt from this inspection include potential job assignments, or prediction of future salary and personnel planning information. An employee has the right to correct, ask for a deletion or write a statement of disagreement with any item in the file. The employee may not, however, remove any item from this file. These records will be maintained at the Company’s corporate office and may not be removed from the premises without the written authorization of a Company officer.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
              Text("These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text(
              'SECTION 15. Personal Behavior',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "1. Reporting for duty in a condition that renders the employee unfit to perform his/her duties or behave in a manner potentially hazardous to the employee or others (e.g. under the influence on alcohol or controlled substances).",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "2. Interfering with another employee in the performance of his/her duties, delaying, or otherwise restructuring operations or influencing others to do so.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "3. Insubordination or uncooperative conduct, refusal to follow a supervisor’s order, or refusal to abide by rules and regulations.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "4. Abusive acts or language to another employee, supervisor or customer.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "5. Sexual harassment of an employee, customer, or client.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "6. Conduct violating common decency or morality.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "7. Fighting, threats, or horseplay which results, or could result, in injury to or intimidation of fellow employees, customers, or clients.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "8. Carrying or using non-authorized controlled substances, alcohol, or other material detrimental to the health and welfare on any Company property.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "9. Espionage, unauthorized surveillance, or bringing or carrying devices on to any Company property to accomplish espionage or unauthorized surveillance.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "10. Bringing unauthorized firearms, explosives, or weapons of any kind on to any Company property.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "11. Any act of dishonesty.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "12. Smoking in non-smoking areas.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "13. Unauthorized use of the telephone, such as making personal long-distance calls that result in a charge to the Company.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "14. Having any unauthorized visitors at the property during work hours.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "15. Distribution or posting of unauthorized literature, etc., in working areas or on bulletin boards.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "16. Any act of disloyalty that would damage the Company’s reputation or interests.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "17. Willful destruction, misuse, damage to, or waste of Company property.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "18. Removal of Company, employee, or customer property without appropriate approval. All monies received on behalf of the Company by any Company employee are to be receipted. All receipts are to be accounted for.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "19. Company property or supplies are for company use only.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "20. Alcohol and non-prescription drugs of any kind are FORBIDDEN at all times while the employee is on the job or in the presence of guests.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "21. Employees are not to enter into either written or verbal contracts or agreements to provide any services outside normal renting of rooms unless specific written authorization is obtained from a Company officer.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "22. Offering or receiving of inducements such as, but not limited to bribes or kickbacks, for any service, goods, or any type business matter is strictly prohibited.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "This list is not intended to be all-inclusive, and disciplinary action may be taken for any other acts or omissions of a similar nature, at the sole discretion of Company management.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
              'SECTION 16. On-The-Job Injuries',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "All injuries suffered by an employee on any Company property or while performing duties elsewhere at the direction of the company must be reported to the supervisor in writing(use incident report form) as soon as possible and the employee must provide detailed information for the required reports. If the injury is serious, the supervisor should be notified immediately by telephone or in person. Any injury sustained by an employee while on the job should be reported to the Company President, whether or not medical attention is required.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
              Text(
              'SECTION 17. Disciplinary Action',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "The need for disciplinary action may arise when:",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
              Text(
                "1. An employee ceases to perform assigned job duties at an acceptable level.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "2. An employee has a problem that adversely affects their employment, including, but not limited to, attendance, relationships with customers and/or other employees, and difficulties of a personal nature.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "3. An employee acts against the interests of the Company, its employees or customers, including fraud, dishonesty, insubordination, falsification of documents, negligence, disloyalty, or any action which has significant economic or public interest impact or other acts of similar or serious nature.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "An employee who has been determined to be in minor violation of policy and procedures, or with performance deficits may be considered for “progressive” discipline that includes four specific steps:",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "a. Corrective interview",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "b. Corrective interview followed by written warning",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "c. Probation",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "d. Termination",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
                "An employee who is found to have committed a serious offense, such as fraud, may be terminated immediately. All terminations will be reviewed the Company President. Disciplinary action often depends on the employee’s work record and nature of the infraction; however, the Company retains the right to terminate an employee at any time, for any or no reason, with or without notice.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
              Text(
              'SECTION 18. Terminations',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "It is the Company’s intent to provide continuous employment to all employees; however, conditions may arise which necessitate the termination of an employee. Termination is a permanent separation which may occur by initiation of the employee or by initiation of the Company due to the employee’s inability to perform satisfactorily the duties of the position or the employee’s actions are detrimental to the best interests of the Company.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text(
                "All Company property such as keys, credit cards, uniforms, office equipment, handouts, papers, or any other Company property must be returned and any expense advances or loans must be settled before final pay distribution will be released to the terminated employee. All checks will be sent directly to the employee’s supervisor for tendering to the terminated employee. The employee’s supervisor is responsible for ensuring that the amount of the final payment is correct, that all Company property is returned and that all expense advances or loans are paid in full before approving issuance of the final paycheck. All terminated employees should leave an accurate mailing address with their immediate supervisor to facilitate the forwarding of any payroll or tax information.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text(
                "These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
                Text(
              'SECTION 19. Criminal Activity; Duty to Report',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text(
                "Employees who come forward with concerns play an important role in maintaining a healthy, respectful, and productive workplace, as well as protecting our guests. Retaliation against employees who raise concerns or questions about misconduct will not be tolerated. Any employee witnessing or becoming aware of an act by another employee, subcontractor, subcontractor’s employee, or any other individual, which may constitute a crime against any Company property is obligated to immediately report such act to the supervisor or a Company officer. Upon discovering any such act such person(s), the Company in every instance will take prompt action to:",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("1. Report such suspected act to the appropriate authorities",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("2. Request the investigation and prosecution of such act",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("3. Full cooperate with all appropriate authorities in any ensuing investigation and prosecution.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("In addition, the Company will report all other criminal activity to the appropriate authorities for disposition and will take all appropriate action in all instances to recover any monetary damages suffered by the Company and any Company managed property arising from criminal activity perpetrated against the Company by an employee, subcontractor, subcontractor’s employee, or any other person(s).",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
                  Text(
              'SECTION 20. Resignation',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text("Should an employee wish to resign, the Company requests a 14 - day written notice so that proper arrangements can be made in the work schedules and a replacement can be found.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
                 Text(
              'SECTION 21. Paychecks; Time of Payment',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text("Employees will be paid by check bi-monthly (every other Saturday). Every effort will be made to have checks available by 3pm on Fridays, but the official payday is every other Saturday. Attached to the paycheck will be a statement showing the gross pay earned and the various deductions withheld from the check. The check received on a given payday will be for wages earned the previous two week payroll period.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
                Text(
              'SECTION 22. Payroll Deductions, Garnishments',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text("The Company will deduct all Federal and State taxes as required by law on all compensation earned by an employee. In addition, if the Company receives a notice or garnishment or wage attachment, pursuant to court order, appropriate deductions will be made from the employee’s check in accordance with applicable law.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
                Text(
              'SECTION 23. Health Insurance',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text("The Company does not provide employees with health insurance as part of their benefits.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text(
              'SECTION 24. Employee Grievances',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
               Text("Any employee with concerns regarding their treatment, duties, work environment, or other aspects of their work relationship is encouraged to discuss the concerns with their immediate supervisor at the earliest possible opportunity. Retaliation against employees who raise concerns or questions about misconduct will not be tolerated. Employees should discuss their concerns “early on” rather than allow the concerns to exist over a longer period of time. If necessary, the employee may wish to discuss a concern with the next level of management after talking with their supervisor.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text("Should the employee not be satisfied with the results of this informal process, a formal grievance process is available to use to address concerns. The steps of this process are:",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text("1. Written request for review by the immediate supervisor detailing the nature of the concern and, if appropriate, requested relief.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("2. The immediate supervisor reviews, investigates, and interviews the employee, and gives a written response within thirty (30) days from receipt of the grievance. In the event of complicated issues or a situation where there are unavoidable obstacles to the investigation, the time frame for response may be lengthened after written notification to the grievant.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("3. The employee may wish to appeal this written decision to the next level of management, who will proceed as in step #2 above. Any such appeal must be made in writing within five (5) working days of receipt of a written decision. The final level of appeal shall be to the President",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text("4. The final level of appeal shall be to the President of the Company, whose decision is final. The President will proceed as in step #2 above.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text("5. In instances where there is a conflict of interest pertaining to the President, the President may appoint corporate attorney to resolve the grievance, providing attorney does not have a conflict of interest or is directly “involved” in the issue of concern.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
               Text("In both the formal and informal processes, the employee may bypass a particular level of management should the nature of the concern/grievance directly involve or the decision constitute an obvious conflict of interest by the person at that particular level.",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
               const SizedBox(height: 8,),
               Text("These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text(
              'EMPLOYEE ACKNOWLEDGMENT',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 5,color: Colors.black,),
            const SizedBox(height: 8,),
            Text("I have received and reviewed these employee policies & work rules, including the Shree Ram Management INC. dba Comfort Inn & Suites Policies and Work Rules, the Drug Free Workplace Policy, and the Shree Ram Management INC. dba Comfort Inn & Suites Sexual Harassment Policy. I understand that these policies do not create any express or implied employment contract. It is specifically understood that my employment is at will, and that either the Company or I may terminate it at any time, for any or no reason, with or without notice. I understand that the Company retains the right to alter, amend, or abolish any or all of these policies and work rules at any time, for any reason and without my prior knowledge, consent or approval .",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
              Text("These policies and work rules have been provided to assist in handling issues that may arise but shall not be considered a binding contract or agreement, and may be applied as individual circumstances or business needs dictate. Except for the policy of at-will employment, any policy or operational guideline or policy may be canceled or modified at any time, in the Company's sole discretion, with or without notice. Employment is at will and may be terminated at any time, with or without cause, by either the employee or the Company. The policy of at-will employment can only be modified in writing signed by the President of the Company. Revised Oct 2014",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}