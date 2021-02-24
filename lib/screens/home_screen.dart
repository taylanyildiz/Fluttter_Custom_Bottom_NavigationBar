import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_00003/widgest/bottom_navigation.dart';
import 'package:flutter_app_test_00003/widgest/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  barSet() {
    setState(() {
      if (isCheck == false) {
        isCheck = true;
      } else {
        isCheck = false;
      }
    });
    print(isCheck);
  }

  pageSet(data) {
    setState(() {
      if (data == 0) {
        //controller_.jumpToPage(0);
        pageIndex = 0;
        height1 = 70;
        width1 = 70;
        color1 = Colors.red;
        postion1 = 20;
        postion_left1 = 10;
        width2 = 40;
        height2 = 40;
        color2 = Colors.blue[300];
        postion2 = 30;
        //
        width4 = 40;
        height4 = 40;
        color4 = Colors.blue[300];
        postion4 = 50;
        postion_left4 = 20;
        //
        width3 = 40;
        height3 = 40;
        color3 = Colors.blue[300];
        postion3 = 30;
        postion_left3 = 250;
        iconColor = Colors.white;
      } else if (data == 1) {
        height1 = 40;
        width1 = 40;
        color1 = Colors.blue[300];
        postion1 = 50;
        postion_left1 = 20;
        //
        width3 = 40;
        height3 = 40;
        color3 = Colors.blue[300];
        postion3 = 30;
        postion_left3 = 250;
        //
        width4 = 40;
        height4 = 40;
        color4 = Colors.blue[300];
        postion4 = 50;
        postion_left4 = 20;
        //
        iconColor = Colors.white;
        pageIndex = 1;
        width2 = 70;
        height2 = 70;
        color2 = Colors.red;
        postion2 = 10;
        postion_left2 = 90;
      } else if (data == 2) {
        //1.
        height1 = 40;
        width1 = 40;
        color1 = Colors.blue[300];
        postion1 = 50;
        //2.
        width2 = 40;
        height2 = 40;
        color2 = Colors.blue[300];
        postion2 = 30;
        postion_left1 = 20;
        iconColor = Colors.white;
        //4.
        width4 = 40;
        height4 = 40;
        color4 = Colors.blue[300];
        postion4 = 50;
        postion_left4 = 20;
        width3 = 70;
        height3 = 70;
        color3 = Colors.red;
        postion3 = 10;
        postion_left3 = 240;
      } else if (data == 3) {
        //1.
        height1 = 40;
        width1 = 40;
        color1 = Colors.blue[300];
        postion1 = 50;
        //2.
        width2 = 40;
        height2 = 40;
        color2 = Colors.blue[300];
        postion2 = 30;
        postion_left1 = 20;
        //3.
        width3 = 40;
        height3 = 40;
        color3 = Colors.blue[300];
        postion3 = 30;
        postion_left3 = 250;
        iconColor = Colors.white;
        width4 = 70;
        height4 = 70;
        color4 = Colors.red;
        postion4 = 20;
        postion_left4 = 10;
      } else if (data == 4) {
        width4 = 40;
        height4 = 40;
        color4 = Colors.blue[300];
        postion4 = 50;
        postion_left4 = 20;
        height1 = 40;
        width1 = 40;
        color1 = Colors.blue[300];
        postion1 = 50;
        //2.
        width2 = 40;
        height2 = 40;
        color2 = Colors.blue[300];
        postion2 = 30;
        postion_left1 = 20;
        //3.
        width3 = 40;
        height3 = 40;
        color3 = Colors.blue[300];
        postion3 = 30;
        postion_left3 = 250;

        setState(() {
          iconColor = Colors.orange;
        });
      }
    });
  }

  bottomSet() {
    setState(() {
      controller_.animateToPage(0,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  bottomSet2() {
    setState(() {
      controller_.animateToPage(1,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  bottomSet3() {
    setState(() {
      controller_.animateToPage(2,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  bottomSet4() {
    setState(() {
      controller_.animateToPage(3,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  bottomSetHome() {
    setState(() {
      controller_.jumpToPage(4);
    });
  }

  double left = 30;
  double top = 30;
  double _width = 60;
  double _height = 60;
  int bottomIndex = 0;
  int pageIndex = 0;
  PageController controller_;
  @override
  void initState() {
    super.initState();
    controller_ = PageController(initialPage: 0);
    if (controller_.initialPage == 0) {
      pageIndex = 0;
      height1 = 70;
      width1 = 70;
      color1 = Colors.red;
      postion1 = 20;
      postion_left1 = 10;
      width2 = 40;
      height2 = 40;
      color2 = Colors.blue[300];
      postion2 = 30;
      //
      width4 = 40;
      height4 = 40;
      color4 = Colors.blue[300];
      postion4 = 50;
      postion_left4 = 20;
      //
      width3 = 40;
      height3 = 40;
      color3 = Colors.blue[300];
      postion3 = 30;
      postion_left3 = 250;
      iconColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: HomeBar(
          onPressed: barSet,
        ).HomeAppBar(),
        body: Stack(
          children: [
            Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: PageView(
                  controller: controller_,
                  onPageChanged: pageSet,
                  children: [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4(),
                    Page5(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigation_(
                Item_1_press: bottomSet,
                Item_2_press: bottomSet2,
                Item_3_press: bottomSet3,
                Item_4_press: bottomSet4,
                Item_home_press: bottomSetHome,
              ),
            ),
          ],
        ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "PAGE 1",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "PAGE 2",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "PAGE 3",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "PAGE 4",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "PAGE 5",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
    );
  }
}
