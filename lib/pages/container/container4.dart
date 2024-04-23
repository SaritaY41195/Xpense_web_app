import 'package:expense_app/widgets/commonContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      //mobile: ,
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  Widget desktopContainer4() {
    return CommonContainer(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration2,
        true, context);
  }
  // Widget desktopContainer4() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(
  //         horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         Expanded(
  //           child: Container(
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   'free some cost',
  //                   style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
  //                 ),
  //                 const SizedBox(height: 20,),
  //                 Text(
  //                   'Save cost\nfor you and\nfamily',
  //                   style: TextStyle(
  //                       fontSize: MediaQuery.sizeOf(context).width / 20,
  //                       color: Colors.black,
  //                       height: 1.2,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //                 const SizedBox(height: 20,),
  //                 Text(
  //                   'Tellus lacus morbi sagittis lacus in. Amet nisl at\n'
  //                       ' mauris enim accumsan nisi, tincidunt vel. Enim\n'
  //                       ' ipsum, amet quis ullamcorper eget ut.',
  //                   style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
  //                 ),
  //                 const SizedBox(height: 20,),
  //                 TextButton.icon(
  //                     onPressed: () {},
  //                     icon: const Icon(Icons.arrow_forward),
  //                     label: Text('Learn more')),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Container(
  //             height: MediaQuery.sizeOf(context).height * 0.55,
  //             decoration: const BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage(illustration2),
  //                 fit: BoxFit.contain,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
