import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container8 extends StatefulWidget {
  const Container8({super.key});

  @override
  State<Container8> createState() => _Container8State();
}

class _Container8State extends State<Container8> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => desktopContainer7(),
    );
  }

  Widget desktopContainer7() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Text('We have millions of best wishers'),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Card(child: ListTile(
                          title: Text('Hello'),
                        ));
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
