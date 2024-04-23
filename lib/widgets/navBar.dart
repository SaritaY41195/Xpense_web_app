import 'package:expense_app/utils/colors.dart';
import 'package:expense_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/button_style.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNav(),
      desktop: (BuildContext context) => desktopNav(),
      // tablet: (BuildContext context) => tabletNav(),
    );
  }

  ///=============== MOBILE ================///
  Widget mobileNav() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  ///=============== DESKTOP ================///
  Widget desktopNav() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          CommonButton(),
        ],
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }

  Widget CommonButton() {
    return Container(
      height: 45,
      child: ElevatedButton(
        style: borderedButtonStyle,
        onPressed: () {},
        child: Text('Request a demo', style: TextStyle(color: AppColor.primary),),
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            )));
  }
}
