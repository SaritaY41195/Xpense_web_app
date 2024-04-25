import 'package:expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../utils/button_style.dart';
import '../utils/constant.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopHeader(),
    );
  }

  Widget desktopHeader() {
    bool isSuffix = true;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // height: MediaQuery.sizeOf(context).height*1,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // height: MediaQuery.sizeOf(context).height*0.8,
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 70,
                    child: navLogo(),
                  ),
                  Container(
                    child: Expanded(
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'LINKS',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'About us',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Careers',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Pricing',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Features',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Blog',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: const Column(
                        children: [
                          Text(
                            'LEGAL',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Terms of use',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Terms of conditions',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Privecy policy',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                          Text(
                            'Cookie policy',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Text(
                            'NEWSLETTER',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Over 25000 people have subscribed',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18, color: Colors.grey.shade400
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintText: 'Enter your email',

                              suffix: isSuffix
                              ?  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.primary,
                                  shape:  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0), // rounded corner radius
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                              : Container(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We don’t sell your email and spam',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Container(
                  child: Expanded(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Privacy & Terms'),
                        const SizedBox(width: 10,),
                        Text('Contact Us'),
                      ],
                    ),
                  ),
                ),
                Container(child: Center(child: Text('Copyright @ 2022 xpence'))),
                Container(
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(image: AssetImage(fb),color: Colors.black, height: 60,width: 40, ),
                        const SizedBox(width: 10,),
                        Image(image: AssetImage(google),color: Colors.black, height: 60,width: 40, ),
                        const SizedBox(width: 10,),
                        Image(image: AssetImage(twitter),color: Colors.black, height: 60,width: 40, ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
}
