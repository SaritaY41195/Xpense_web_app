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
      mobile: (BuildContext context) => mobileContainer(),
      desktop: (BuildContext context) => desktopContainer(),
    );
  }

  mobileContainer() {}

  desktopContainer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child:Column(
                children: [
                  Text(
                    'Track your\n Expenses to\n Save Money',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width!/20,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                          style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(AppColor.primary),
                          ),
                          onPressed: (){},
                          icon: const Icon(Icons.arrow_drop_down_outlined, color: Colors.white,),
                          label: const Text('Try free demo', style: TextStyle(color: Colors.white),)),
                      const SizedBox(width: 10,),
                      const Text(' — Web, iOs and Android'),
                    ],
                  ),

                ],
              ),
            ),
          ),
          getImage(),
        ],
      ),
    );
  }

  Widget getImage() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(illustration1),
      )),
    );
  }
}
