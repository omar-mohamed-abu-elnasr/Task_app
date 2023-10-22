import 'package:flutter/material.dart';

class WorkOut extends StatelessWidget {
  const WorkOut({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 290.0, top: 30),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/Icon.png",
                            width: 30,
                            height: 30,
                          )
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 12,
                          width: 9,
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Image.asset(
                "assets/images/Ellipse 10.png",
                height: 70,
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                "Hello, Jade\n"
                "Ready to workout?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset("assets/images/Heart.png"),
        Container(
          padding: EdgeInsets.only(left: 13),
            alignment: Alignment.centerLeft,
            child: Text(
              "Workout Programs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),
            )),
        SizedBox(height: 12,),
        Expanded(
          child: DefaultTabController(
            initialIndex: 1,
            length: 4,
            child: Scaffold(
              appBar: AppBar(elevation: 0,
                backgroundColor: Colors.white70,
                toolbarHeight: 0,
                bottom:  const TabBar(
                  labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  tabs: <Widget>[
                    Tab(
                      text: "All type",
                    ),
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                        text: "Upper",
                    ),
                    Tab(
                      text: "Lower",
                    ),
                  ],
                ),
              ),
              body:  TabBarView(
                children: <Widget>[
                  ListView(
                    children:[
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 210.0,
                            width: double.infinity,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text(
                                "Morning Yoga\nImprove mental focus.",
                                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,top: 40
                              ),
                              child: Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Container(alignment: Alignment.center,
                                    child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 250.0),
                            child: Image.asset("assets/images/[removal 2.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 160.0, left: 20),
                            child: Icon(Icons.access_time, size: 35, color: Color(
                                0xB3235773)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60, top: 170),
                            child: Text("30 mins",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                          ),
                        ]),
                      Stack(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 210.0,
                              width: double.infinity,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Plank Exercise\nImprove posture and\n stability.",
                                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,top: 35
                              ),
                              child: Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Container(alignment: Alignment.center,
                                    child: Text("3 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 250.0),
                              child: Image.asset("assets/images/pngwing 1.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 160.0, left: 20),
                              child: Icon(Icons.access_time, size: 35, color: Color(
                                  0xB3235773)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60, top: 170),
                              child: Text("30 mins",
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            ),
                          ]),
                      Stack(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 210.0,
                              width: double.infinity,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Morning Yoga\nImprove mental focus.",
                                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,top: 40
                              ),
                              child: Container(
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Container(alignment: Alignment.center,
                                    child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 250.0),
                              child: Image.asset("assets/images/[removal 2.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 160.0, left: 20),
                              child: Icon(Icons.access_time, size: 35, color: Color(
                                  0xB3235773)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60, top: 170),
                              child: Text("30 mins",
                                  style:
                                  TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                            ),
                          ]),
                  ]),
                  ListView(
                      children:[
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Plank Exercise\nImprove posture and\n stability.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 35
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("3 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/pngwing 1.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                      ]),
                  ListView(
                      children:[
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Plank Exercise\nImprove posture and\n stability.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 35
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("3 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/pngwing 1.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                      ]),
                  ListView(
                      children:[
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Plank Exercise\nImprove posture and\n stability.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 35
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("3 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/pngwing 1.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                        Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 210.0,
                                width: double.infinity,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(color: Color(0xB3CBE5E8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Morning Yoga\nImprove mental focus.",
                                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 40
                                ),
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Container(alignment: Alignment.center,
                                      child: Text("7 Days",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50, left: 250.0),
                                child: Image.asset("assets/images/[removal 2.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 160.0, left: 20),
                                child: Icon(Icons.access_time, size: 35, color: Color(
                                    0xB3235773)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 170),
                                child: Text("30 mins",
                                    style:
                                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                              ),
                            ]),
                      ]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
