import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer6(),
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
        ],
      ),
    );
  }
}
