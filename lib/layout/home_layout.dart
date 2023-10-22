import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz/pages/AliceCare/AliceCare.dart';
import 'package:quiz/pages/home/home_view.dart';
import 'package:quiz/pages/person/Person.dart';
import 'package:quiz/pages/workout/work_out.dart';

class HomeLayoutView extends StatefulWidget {
  static const String routeName = "home";
  const HomeLayoutView({super.key});

  @override
  State<HomeLayoutView> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<HomeLayoutView> {
  int selectedIndex = 3;
  List<Widget> pages = [
    Home_View(),
    WorkOut(),
    AliceCare(),
    Person(),
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Iconhome.png"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Iconbox.png"),
                ),
                label: "WorkOut"),
            BottomNavigationBarItem(
                icon: TextButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  AliceCare()));
                  },
                    child: ImageIcon(AssetImage("assets/images/Iconbag.png"))),
                label: "AliceCare"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Iconperson.png")),
                label: "Person"),
          ],
        ));
  }
}
