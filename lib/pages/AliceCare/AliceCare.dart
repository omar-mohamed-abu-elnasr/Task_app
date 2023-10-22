import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/pages/chat.dart';
import 'package:quiz/pages/insights.dart';
import 'package:quiz/pages/today.dart';

class AliceCare extends StatefulWidget {
  static const String routeName ="AliceCare";


  AliceCare({super.key});

  @override
  State<AliceCare> createState() => _AliceCareState();
}

class _AliceCareState extends State<AliceCare> {
  int selectedIndex =0;
  List<Widget> screens =[
    Insights(),
    Today(),
    Chat(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(onTap:() {Navigator.pop(context);},
            child: Icon(Icons.arrow_back,color: Colors.black,)),

        actions: [
          Padding(
            padding: const EdgeInsets.only(top:20 , right: 10),
            child: Image.asset("assets/images/appbar_icon.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120,top:20),
            child: Text(
              "AliceCare",
              style:GoogleFonts.milonga(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),

            ),
          ),
        ],

      ) ,
      /////////////////////////////////////////////////////////////

      body: screens[selectedIndex],

      ///////////////////////////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            selectedIndex =index;
          });

        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white38,

        selectedIconTheme:IconThemeData(
          color: Colors.purple,
          size: 32,
        ) ,
        selectedItemColor: Colors.purple,
        currentIndex: selectedIndex,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Insights"),
          BottomNavigationBarItem(icon: Icon(Icons.today_outlined), label: "today"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "chat"),
        ],
      ),
    );
  }
}



// leading: Padding(
//   padding: EdgeInsets.all(8.0),
//   child:
//   Image.asset(
//     "assets/icon/appbar_icon.png",
//   ),
// ),
// backgroundColor: Colors.transparent,
// elevation: 0,
// title: Text(
//   "AliceCare",
// ),