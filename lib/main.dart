//OnBoarding Screen In Flutterrrrrr
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, prefer_final_fields, must_be_immutable
//SMOOTH PAGE INDICTOR
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(OnBoarding());
}

class OnBoarding extends StatelessWidget {
  //controller is just to keep track of which we are on

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ON-BOARDING SCREEN",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                Container(
                  child: Center(
                    child: Column(children: [
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2012/04/26/19/04/pin-42871_1280.png'),
                        height: 400,
                        width: 420,
                      ),
                      Text(
                        "Search & Locate",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Join us in unraveling the secrets behind our exceptional burgers, inspiring you to delve into our world, one delicious bite at a time. Satisfy your curiosity and let your taste adventure begin with us! ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ]),
                  ),
                  color: Colors.white,
                ),
                Container(
                  child: Center(
                    child: Column(children: [
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/06/29/18/46/burger-1487481_1280.png'),
                        height: 400,
                        width: 420,
                      ),
                      Text(
                        "Order Now",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Simply explore our tantalizing menu, packed with a variety of delectable burger options to suit every craving. Once you've made your mouthwatering choice, just let our friendly staff know your selection along with any special preferences you have in mind.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ]),
                  ),
                  color: Colors.amberAccent,
                ),
                Container(
                  child: Center(
                    child: Column(children: [
                      Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2022/01/27/21/37/delivery-6973177_1280.png'),
                        height: 400,
                        width: 420,
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "No need to step out  just browse our menu, select your cravings, and let us bring the burger bliss right to your doorstep. Elevate your dining experience with our hassle-free, complimentary delivery service today!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ]),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
            Container(
                alignment: Alignment(0, 0.8),
                child: SmoothPageIndicator(controller: _controller, count: 3)),
          ],
        ),
      ),
    );
  }
}
