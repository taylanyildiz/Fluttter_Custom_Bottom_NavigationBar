import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double width1 = 40.0;
double height1 = 40.0;
Color color1 = Colors.blue[300];
double postion1 = 50.0;
double postion_left1 = 20.0;
/* 2. Item */
double width2 = 40.0;
double height2 = 40.0;
Color color2 = Colors.blue[300];
double postion2 = 30.0;
double postion_left2 = 100.0;
/* 3. Item */
double width3 = 40.0;
double height3 = 40.0;
Color color3 = Colors.blue[300];
double postion3 = 30.0;
double postion_left3 = 250.0;
/* 4. Item */
double width4 = 40.0;
double height4 = 40.0;
Color color4 = Colors.blue[300];
double postion4 = 50.0;
double postion_left4 = 20.0;
/* 4. home */
double width5 = 60.0;
double height5 = 60.0;
Color color5 = Colors.blue[300];
double postion5 = 10.0;
double postion_left5 = 0.0;

Color iconColor = Colors.white;

class BottomNavigation_ extends StatelessWidget {
  VoidCallback Item_1_press;
  VoidCallback Item_2_press;
  VoidCallback Item_3_press;
  VoidCallback Item_4_press;
  VoidCallback Item_home_press;
  BottomNavigation_({
    this.Item_1_press,
    this.Item_2_press,
    this.Item_3_press,
    this.Item_4_press,
    this.Item_home_press,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              height: 80,
              width: MediaQuery.of(context).size.width,
              duration: Duration(milliseconds: 100),
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(400, 200),
                    topRight: Radius.elliptical(400, 200),
                  )),
            ),
          ),
          Positioned(
            child: GestureDetector(
              onTap: Item_1_press,
              child: AnimatedContainer(
                margin: EdgeInsets.only(top: postion1, left: postion_left1),
                duration: Duration(milliseconds: 600),
                width: width1,
                height: width1,
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          Positioned(
              child: GestureDetector(
            onTap: Item_2_press,
            child: AnimatedContainer(
              margin: EdgeInsets.only(top: postion2, left: postion_left2),
              duration: Duration(milliseconds: 600),
              width: width2,
              height: height2,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
          )),
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: Item_home_press,
              child: AnimatedContainer(
                margin: EdgeInsets.only(
                  top: postion5,
                ),
                duration: Duration(milliseconds: 600),
                width: width5,
                height: height5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(60.0),
                ),
                child: Icon(
                  Icons.home,
                  color: iconColor,
                  size: 40,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: Item_3_press,
            child: AnimatedContainer(
              margin: EdgeInsets.only(
                top: postion3,
                left: postion_left3,
              ),
              duration: Duration(milliseconds: 600),
              width: width3,
              height: height3,
              decoration: BoxDecoration(
                color: color3,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: Item_4_press,
              child: AnimatedContainer(
                margin: EdgeInsets.only(
                  top: postion4,
                  right: postion_left4,
                ),
                duration: Duration(milliseconds: 600),
                width: width4,
                height: height4,
                decoration: BoxDecoration(
                  color: color4,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
