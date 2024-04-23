import 'package:expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer2(),
      desktop: (BuildContext context) => desktopContainer2(),
      // tablet: ,
    );
  }

  Widget mobileContainer2() {
    return Container(
      child: Text('Mobile'),
    );
  }

  Widget desktopContainer2() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  right: 30,
                  top: 100,
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage(
                        dashboard,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
           // margin: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                addCompany(fb),
                addCompany(google),
                addCompany(cocacola),
                addCompany(linkedin),
                addCompany(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  addCompany(String image) {
    return Container(
      height: MediaQuery.sizeOf(context).height *0.09,
      width: MediaQuery.sizeOf(context).width *0.09,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain
        ),
      ),
    );
  }
}
