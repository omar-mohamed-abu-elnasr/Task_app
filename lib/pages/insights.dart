import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Insights extends StatefulWidget {
  const Insights({super.key});

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {

    final pages = List.generate(
        3,
            (index) => Stack(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 210.0,
              width: double.infinity,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(image:DecorationImage(
                  image:AssetImage("assets/images/pics_1.png"))),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFE0CA7D),),
                alignment: Alignment.center,
                height: 30,
                width:100,

                margin: const EdgeInsets.only(left: 10),

                child: Text(
                  "self-care",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, top: 120),
              child: Text("10 Easy Self-Care Ideas That Can \n Help Boost Your Health",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 19, fontWeight: FontWeight.w600)),
            ),
              ]));

    return Column(

      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 70.0,top: 20),
            child: Row(crossAxisAlignment:CrossAxisAlignment.center,
              children: [

                OutlinedButton.icon(onPressed: onPressed,
                  icon:Icon(Icons.search_rounded),
                  label: Text("Articles, Video, Audio and More,..."),
                ),
              ],

            ),
          ),
        ),
       ////////////////////////////////
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child:
    Row(
    children: [

      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple.shade50,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.purple.shade100,width: 2)
        ),
        child: Center(child: Text('Descover')),
      ),
      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300,width: 2)
        ),
        child: Center(child: Text('News')),
      ),
      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300,width: 2)
        ),
        child: Center(child: Text('Most viewed')),
      ),
      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300,width: 2)
        ),
        child: Center(child: Text('Saved')),
      ),
      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300,width: 2)
        ),
        child: Center(child: Text('More')),
      ),

    ],
    ),
    ),
    //////////////////////////////////////////////////////////////////
        SizedBox(height: 20),
    ////////////////////////////////////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hot topics',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

            ),
            SizedBox(width: 200),
            Text('See all',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 2),
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
          ],
        ),
  ///////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////
        SafeArea(top: false,
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
//////////////////////////////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('Get Tips',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),

              ),
            ),
          ],
        ),
/////////////////////////////////////////////////////////////////////////////////////////////////////////
        Expanded(
          child: Stack(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 210.0,
              width: double.infinity,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(image:DecorationImage(
                  image:AssetImage("assets/images/pics_3.png"))),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 150, bottom: 40),
                child: Text(
                    "Connect with doctors & \n get suggestions \n\n Connect now and get \n expert insights ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18, fontWeight: FontWeight.w400)),
              ),

            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                color: Colors.purple.shade300),
              alignment: Alignment.center,
              height:45,
              width:100,

              margin: const EdgeInsets.only(left: 200, top: 160),

              child: Text(
                "View detail",
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),

          ]),
        ),
//////////////////////////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cycle Phases and Period',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

            ),
            SizedBox(width: 70),
            Text('See all',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 2),
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.purple),
          ],
        ),

    ],

    );
  }
}
