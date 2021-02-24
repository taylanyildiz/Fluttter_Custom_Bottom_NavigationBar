import 'package:flutter/material.dart';

bool isCheck = false;

class HomeBar extends AppBar {
  VoidCallback onPressed;
  HomeBar({this.onPressed});
  AppBar HomeAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.orange,
      toolbarHeight: 100,
      title: (() {
        if (isCheck == false) {
          return Column(
            children: [
              Text(
                "Home Screen",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.food_bank,
                size: 60,
              ),
            ],
          );
        } else {
          return TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: "Ara....",
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
              ),
            ),
          );
        }
      }()),
      centerTitle: true,
      actions: [
        !isCheck
            ? IconButton(
                color: Colors.blue,
                iconSize: 40,
                onPressed: onPressed,
                icon: Icon(Icons.search),
              )
            : IconButton(
                color: Colors.blue,
                iconSize: 40,
                onPressed: onPressed,
                icon: Icon(Icons.search_off),
              ),
      ],
    );
  }
}
