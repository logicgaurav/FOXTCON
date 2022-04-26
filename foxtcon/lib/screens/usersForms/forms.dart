import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/usersForms/form_five.dart';
import 'package:foxtcon/screens/usersForms/form_four.dart';
import 'package:com.foxtcon.foxtconapp/screens/usersForms/form_one.dart';
import 'package:foxtcon/screens/usersForms/form_three.dart';
import 'package:foxtcon/screens/usersForms/form_two.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/constants.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  PageController controller = PageController();
  late bool fiveArrowbtnHiden = false;
  final List<Widget> _list = <Widget>[
     const FormOneScreen(),
     const FormTwo(),
     const FormThreeScreen(),
     const FormFourScreen(),
     const FormFiveScreen()
  ];
  int currunt = 0;
  int firstIndex = 0;
  int secondIndex = 0;
  int thirdIndex = 0;
  int fourIndex = 0;
  int fiveIndex = 0;

  var arrTitle = [
    const FormOneScreen(),
    const FormTwo(),
    const FormThreeScreen(),
    const FormFourScreen(),
    const FormFourScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Colors.white,
          height: 100.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding*3.5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.purpalWithAlpha,
                      ),
                      color: firstIndex == 1 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(child: Text("1", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15, color: firstIndex == 1 ? Colors.white : Colors.black),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding * 3.5),
                child: Container(
                  height: 5,
                  color: firstIndex == 1 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                  width: MediaQuery.of(context).size.width / 8 - kDefaultPadding,
                ),
              ),
             Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding*3.5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.purpalWithAlpha,
                      ),
                      color: secondIndex == 2 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(child: Text("2", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15, color: secondIndex == 2 ? Colors.white : Colors.black),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding * 3.5),
                child: Container(
                  height: 5,
                  color: secondIndex == 2 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                  width: MediaQuery.of(context).size.width / 8 - kDefaultPadding,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding*3.5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.purpalWithAlpha,
                      ),
                      color: thirdIndex == 3 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(child: Text("3", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15, color: thirdIndex == 3 ? Colors.white : Colors.black),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding * 3.5),
                child: Container(
                  height: 5,
                  color: thirdIndex == 3 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                  width: MediaQuery.of(context).size.width / 8 - kDefaultPadding,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding*3.5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.purpalWithAlpha,
                      ),
                      color: fourIndex == 4 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(child: Text("4", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15, color: fourIndex == 4 ? Colors.white : Colors.black),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding * 3.5),
                child: Container(
                  height: 5,
                  color: fourIndex == 4 ? AppColors.mainColor : AppColors.purpalWithAlpha,
                  width: MediaQuery.of(context).size.width / 8 - kDefaultPadding,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding*3.5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.purpalWithAlpha,
                      ),
                      color: AppColors.purpalWithAlpha,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(child: Text("5", style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15),)),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height - 150,
          child: PageView(
            children: _list,
            scrollDirection: Axis.horizontal,
            controller: controller,
            onPageChanged: (num) {
              setState(() {
                currunt = num;
                if(currunt == 1){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                } else if(currunt == 2){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                  secondIndex = 2;
                } else if(currunt == 3){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                  secondIndex = 2;
                  thirdIndex = 3;
                } else if(currunt == 4){
                  fiveArrowbtnHiden = true;
                  firstIndex = 1;
                  secondIndex = 2;
                  thirdIndex = 3;
                  fourIndex = 4;
                }
              });
            },
          ),
        ),
      ],
    ),
    floatingActionButton: fiveArrowbtnHiden == false ? FloatingActionButton(
        onPressed: () {
          setState(() {
            currunt += 1;
                if(currunt == 1){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                  controller.animateToPage(firstIndex, duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                } else if(currunt == 2){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                  secondIndex = 2;
                  controller.animateToPage(secondIndex, duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                } else if(currunt == 3){
                  fiveArrowbtnHiden = false;
                  firstIndex = 1;
                  secondIndex = 2;
                  thirdIndex = 3;
                  controller.animateToPage(thirdIndex, duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                } else if(currunt == 4){
                  fiveArrowbtnHiden = true;
                  firstIndex = 1;
                  secondIndex = 2;
                  thirdIndex = 3;
                  fourIndex = 4;
                  controller.animateToPage(fourIndex, duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                }
              });
        },
        backgroundColor: AppColors.purpalWithAlpha,
        child: const Icon(Icons.arrow_forward),
      ) : Container(),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
