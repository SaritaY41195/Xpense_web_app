import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/button_style.dart';

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
                fontSize: MediaQuery.sizeOf(context).width / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommomCard(Icons.shopping_bag_outlined, 'Starer Plan',9.99, 'up to 3 user + 1.99 per user'),
                CommomCard(Icons.card_giftcard_outlined, 'Silver Plan',19.99, 'up to 3 user + 1.99 per user'),
                CommomCard(Icons.diamond_outlined, 'Diamond Plan',29.99, 'up to 3 user + 1.99 per user'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CommomCard(IconData icon, String planName, double price, String subText, ){
    return Container(
      width: MediaQuery.sizeOf(context).width *0.2,
      height: MediaQuery.sizeOf(context).width *0.26,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.blue,),
              const SizedBox(height: 10,),
              Text(planName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.sizeOf(context).height/30),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.check),
                  Text('Store unlimited data'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check),
                  Text('Export to pdf, xls, csv'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check),
                  Text('Cloud server support'),
                ],
              ),
              const SizedBox(height: 10,),
              Text('\$ ${price.toString()}/year',style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.sizeOf(context).height/30),),
              Text(subText, style: TextStyle(color: Colors.grey.shade500),),
              const SizedBox(height: 40,),
              Container(
                height: 50,
                width: 150,
                child: ElevatedButton.icon(
                  style: borderedButtonStyle,
                  onPressed: (){},
                  label: const Text('Get this', style: TextStyle(color: Colors.deepOrange, fontSize: 20),),
                  icon: const Icon(Icons.arrow_forward, color: Colors.deepOrange,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
