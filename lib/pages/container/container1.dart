import 'package:expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/button_style.dart';
import '../../utils/constant.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer1(),
      desktop: (BuildContext context) => desktopContainer1(),
      tablet: (BuildContext context) => mobileContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              )),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Track your Expenses \n to Save Money',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.sizeOf(context).width / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.primary),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Try free demo',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '— Web, iOs and Android',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your\n Expenses to\n Save Money',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.sizeOf(context).width / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColor.primary),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Try free demo',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '— Web, iOs and Android',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.55,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
