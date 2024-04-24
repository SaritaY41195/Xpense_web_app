import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/button_style.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer6(),
      desktop: (BuildContext context) => desktopContainer6(),
    );
  }

  Widget mobileContainer6() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'The Product we work with.',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.sizeOf(context).width / 15,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }

  Widget desktopContainer6() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'The Product we\nwork with.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.sizeOf(context).width / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at\n'
                  'mauris enim accumsan nisi, tincidunt vel. Enim\n'
                  'ipsum, amet quis ullamcorper eget ut.',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonCardSlider(Icons.desktop_windows_outlined, 'Cross Platform'),
                CommonCardSlider(Icons.cloud_outlined, 'Cloud Server'),
                CommonCardSlider(Icons.javascript, 'Pure Javascript'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CommonCardSlider(IconData icon, String workName) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.2,
      height: MediaQuery.sizeOf(context).width * 0.26,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Icon(icon)),
            const SizedBox(height: 10,),
            Text(
              workName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.sizeOf(context).height / 30),
            ),
            Text(
              'Elit esse cillum dolore eu fugiat\nnulla pariatur', textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
            ),
            const SizedBox(height: 10,),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward),
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
