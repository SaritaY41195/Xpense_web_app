import 'package:expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';

class Container9 extends StatefulWidget {
  const Container9({super.key});

  @override
  State<Container9> createState() => _Container9State();
}

class _Container9State extends State<Container9> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer9(),
    );
  }

  Widget desktopContainer9() {
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
                  left: 50,
                  right: 50,
                  top: 100,
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '20M+ downloaded from 32\ndiffrent countires',
                          style: TextStyle(
                              fontSize: MediaQuery.sizeOf(context).width / 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Try demo for 7 days with full features.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down_outlined,
                              color: AppColor.primary,
                            ),
                            label: Text(
                              'Try free demo',
                              style: TextStyle(color: AppColor.primary),
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  bottom: 200,
                    child: CommonCardImage(illustration1)),
                Positioned(
                    top: 520,
                    left: 220,
                    bottom: 10,
                    child: CommonCardImage(illustration2)),
                Positioned(
                    top: 300,
                    right: 40,
                    bottom: 200,
                    child: CommonCardImage(illustration3)),
                Positioned(
                    top: 520,
                    right: 220,
                    bottom: 10,
                    child: CommonCardImage(illustrator)),
              ],
            ),
          ),
        ],
      ),
    );
  }


  CommonCardImage(String image){
    return Container(
      height: MediaQuery.sizeOf(context).height*0.1,
      width: MediaQuery.sizeOf(context).width*0.2,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
        ),
      ),
    );
  }
}
