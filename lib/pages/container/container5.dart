import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constant.dart';
import '../../widgets/commonContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      //mobile: ,
      desktop: (BuildContext context) => desktopContainer5(),
    );
  }

  Widget desktopContainer5(){
    return CommonContainer('USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false, context);
  }
  // Widget desktopContainer5() {
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
  //                   'Use anytime',
  //                   style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
  //                 ),
  //                 const SizedBox(height: 20,),
  //                 Text(
  //                   'Use anytime\nwhen you\nneed',
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
  //                 image: AssetImage(illustration3),
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
