import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    final pages = List.generate(
        6,
        (index) => Center(
              child: Stack(
                  children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 210.0,
                  width: double.infinity,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(color: Color(0xB397C7BE),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text(
                    "Positive Vibes\n\n Boost Your Mood Wit\n Positive Vibes\n",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 190.0),
                  child: Image.asset("assets/images/Walking the Dog.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140.0, left: 20),
                  child: Icon(Icons.play_circle, size: 35, color: Colors.green),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 150),
                  child: Text("10 mins",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ]),
            ));

    return Container(
        height: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 290.0, top: 25),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
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
                  "assets/images/logo.png",
                  height: 70,
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  "Moody",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 25),
              child: Text("Hello, Sara Rose", style: TextStyle(fontSize: 23))),
          SizedBox(height: 8),
          Container(
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "How are you feeling today ?",
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/Love.png"),
              Image.asset("assets/images/Cool.png"),
              Image.asset("assets/images/Happy.png"),
              Image.asset("assets/images/Sad.png"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Love",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Cool",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Happy",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Sad",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  "Feature",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170.0),
                child: Text(
                  "see more",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.green,
              )
            ],
          ),
          SafeArea(
            top: false,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        controller: controller,
                        // itemCount: pages.length,
                        itemBuilder: (_, index) {
                          return pages[index % pages.length];
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        type: WormType.thinUnderground,
                      ),
                    ),
                  ]),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 50),
                child: Text(
                  "Exercise",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 150),
                child: Text(
                  "see more",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.green,
                ),
              )
            ],
          ),
          Image.asset("assets/images/Frame 33row1.png"),
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/Frame 34row2.png"),
        ]));
  }
}
