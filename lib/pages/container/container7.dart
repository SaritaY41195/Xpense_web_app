import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container7 extends StatefulWidget {
  const Container7({super.key});

  @override
  State<Container7> createState() => _Container7State();
}

class _Container7State extends State<Container7> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer7(),
    );
  }

  Widget desktopContainer7() {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Choose your flexible plan.',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.sizeOf(context).width / 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     child: Row(
          //       children: [
          //         ListView.builder(
          //             itemCount: 3,
          //             itemBuilder: (context, index) {
          //           return const Card(child: ListTile(
          //             title: Text('Hello'),
          //           ));
          //         }),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
