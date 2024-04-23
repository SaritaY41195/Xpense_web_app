import 'package:expense_app/utils/constant.dart';
import 'package:expense_app/widgets/commonContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      //mobile: ,
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  // Widget desktopContainer3() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(
  //         horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         Expanded(
  //           child: Container(
  //             child: Column(
  //              crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   'Alwalys online',
  //                   style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
  //                 ),
  //                 const SizedBox(height: 20,),
  //                 Text(
  //                   'Real-time\nsupport\nwith cloud',
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
  //                     icon: Icon(Icons.arrow_forward),
  //                     label: Text('Learn more')),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Expanded(
  //           child: Container(
  //             height: MediaQuery.sizeOf(context).height * 0.55,
  //             decoration: BoxDecoration(
  //               image: DecorationImage(
  //                 image: AssetImage(illustrator),
  //                 fit: BoxFit.contain,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget desktopContainer3(){
    return CommonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false, context);
  }
}
