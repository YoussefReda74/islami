import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SalahTime extends StatelessWidget {
  SalahTime({super.key});
  List<Map<String, String>> prayersTime = [
    {'name': 'Fajr', 'time': '5:00','period':'AM'},
    {'name': 'Dhuhr', 'time': '12:30','period':'PM'},
    {'name': 'Asr', 'time': '4:15','period':'PM'},
    {'name': 'Maghrib', 'time': '6:30','period':'PM'},
    {'name': 'Isha', 'time': '7:45','period':'PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 130,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.3
      ),
      items: prayersTime.map((prayer) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 104,
                  child: Image.asset(
                    "assets/images/time_img.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 12,bottom: 12),
                  height: 130,
                  width: 105,
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          prayer['name']!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white, fontSize: 17),
                        ),
                      ),

                      Expanded(
                        child: Text(
                          prayer['time']!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white, fontSize: 32),
                        ),
                      ),

                      Expanded(
                        child: Text(
                          prayer['period']!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
