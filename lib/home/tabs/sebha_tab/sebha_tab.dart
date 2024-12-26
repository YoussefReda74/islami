import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int zikrIndex = 0;
  double currentAngle = 0;
  final List<String> zikrList = ['سبحان الله', 'الحمدلله', 'الله أكبر'];

  void _onSebhaPressed() {
    setState(() {
      counter++;
      currentAngle += 360 / 33;

      if (counter >= 33) {
        counter = 0;
        zikrIndex = (zikrIndex + 1) % zikrList.length;
        currentAngle = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.white,
            fontSize: 38,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: _onSebhaPressed,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: currentAngle * 3.14 / 180,
                child: Image.asset(
                  'assets/images/Sebha.png',
                  width:double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    zikrList[zikrIndex],
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    (counter % 33).toString(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 38,

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
