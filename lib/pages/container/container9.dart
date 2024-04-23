import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container9 extends StatefulWidget {
  const Container9({super.key});

  @override
  State<Container9> createState() => _Container9State();
}

class _Container9State extends State<Container9> {
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
              child: Text('20M+ downloaded from 32 diffrent countires'),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('Try demo for 7 days with full features.'),
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

