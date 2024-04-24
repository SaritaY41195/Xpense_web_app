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
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.primary),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dashboard), fit: BoxFit.contain)),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                addCompanyMobile(fb),
                addCompanyMobile(google),
                addCompanyMobile(cocacola),
                addCompanyMobile(samsung)
              ],
            ),
          )
        ],
      ),
    );
  }

  addCompanyMobile(String image) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.1,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
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
                    right: -20,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      width: MediaQuery.sizeOf(context).height * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector)),
                      ),
                    )),
                Positioned(
                    left: -20,
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      width: MediaQuery.sizeOf(context).height * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1)),
                      ),
                    )),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.1,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
