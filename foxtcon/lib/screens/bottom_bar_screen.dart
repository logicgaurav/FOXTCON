import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/dashbard_screen.dart';
import 'package:foxtcon/screens/employe_list_screen.dart';
import 'package:foxtcon/screens/profile_screen.dart';
import 'package:foxtcon/theme.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({ Key? key }) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  dynamic _selectedIndex = 0;
  List<String> titleList = ["Orders", "Done", "Profile"];

  _getDrawerScreen(int pos){
    switch(pos){
      case 0:
        return const DashboardScreen();
      case 1:
        return;
      case 2:
        return ;
      case 3:
        return const ProfileScreen();
      default:
        return  const Text("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
              canvasColor: Colors.white,),
        child: BottomNavigationBar(
        onTap: onTabPress,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        type: BottomNavigationBarType.fixed,
         iconSize: 30,
         items: const [
          BottomNavigationBarItem(
            label: "Feed",
            icon: Icon(Icons.menu),

          ),
          BottomNavigationBarItem(
            label: "Assets",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Icon(Icons.notifications_none),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      )),
      body: _getDrawerScreen(_selectedIndex),);
  }
  void onTabPress(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}