import 'package:expense_app/pages/container/container1.dart';
import 'package:expense_app/pages/container/container4.dart';
import 'package:expense_app/pages/container/container5.dart';
import 'package:expense_app/pages/container/container8.dart';
import 'package:expense_app/pages/container/container9.dart';
import 'package:expense_app/pages/header_page.dart';
import 'package:flutter/material.dart';
import '../widgets/navBar.dart';
import 'container/container2.dart';
import 'container/container3.dart';
import 'container/container6.dart';
import 'container/container7.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
            Container6(),
            Container7(),
            Container8(),
            Container9(),
            HeaderPage(),
          ],
        ),
      ),
    );
  }
}