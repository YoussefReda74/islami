import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class audioItem extends StatelessWidget {
  String stackImage;
  String title;
  String icAudio;
  String icVolume;

  audioItem(
      {required this.stackImage,
      required this.title,
      required this.icAudio,
      required this.icVolume});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'assets/images/$stackImage.png',
            height: 141,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Color(0xff202020),
                  ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$icAudio.png',
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/$icVolume.png',
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
