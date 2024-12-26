import 'package:flutter/material.dart';
import '../../../my_theme_data.dart';

class AzkarItem extends StatelessWidget {
  String nameOfImage;
  String titel;

  AzkarItem({super.key, required this.nameOfImage,required this.titel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 185,
            height: 260,
            decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: MyThemeData.primaryColor),
                borderRadius: BorderRadius.circular(20)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Image.asset(
                  'assets/images/$nameOfImage.png',
                  width: 185,
                  height: 185,
                ),
              ),
              Text(
                  titel,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
