import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SalahTime extends StatelessWidget {
   SalahTime({super.key});
  List<Map<String, String>> prayersTime = [
    {'name': 'Fajr', 'time': '5:00 AM'},
    {'name': 'Dhuhr', 'time': '12:30 PM'},
    {'name': 'Asr', 'time': '4:15 PM'},
    {'name': 'Maghrib', 'time': '6:30 PM'},
    {'name': 'Isha', 'time': '7:45 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 130, autoPlay: false,enableInfiniteScroll: false,),
      items: prayersTime.map((hadeth) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width:104 ,
                  child: Image.asset(
                    "assets/images/time_img.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [

                  ],
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
