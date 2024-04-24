import 'package:carousel_slider/carousel_slider.dart';
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
      desktop: (BuildContext context) => desktopContainer8(),
    );
  }

  Widget desktopContainer8() {
    final carouselController = CarouselController();
    int currentIndex = 0;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            child: Text(
              'We have millions of best wishers',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.sizeOf(context).width / 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                ),
                items: [1, 2, 3, 4, 5].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '$item Eleifend fames amet, fames enim.\nUllamcorper pellentesque ac volutpat\nnibh aliquet et, ut netus. Vel, fringilla\nsit eros pretium felis massa mauris,\naliquam congue.',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                            child:
                                                Icon(Icons.person_2_rounded)),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Cameron Williamson, CEO',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            child: Positioned(
              bottom: -10,
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                print(entry);
                print(entry.key);
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex ==entry.key ? 17: 7,
                    height: 7,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? Colors.deepOrange
                          : Colors.black26,
                    ),
                  ),
                );
              },
                ).toList(),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
