import 'package:flutter/material.dart';


class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
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
        InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Image.asset(
                  'assets/images/Sebha.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'سبحان الله',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 38,
                        ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '30',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 38,
                        ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
