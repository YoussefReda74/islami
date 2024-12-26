import 'package:flutter/material.dart';
import 'package:islami/home/tabs/time_tab/salaa_time_item.dart';
import 'azkar_item.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/pray_time_table1.png',
                      width: double.infinity,
                    ),
                    Image.asset('assets/images/pray_time_table.png',
                        width: double.infinity),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 15, bottom: 15),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              '16 Jul,\n2024',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pray Time',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: const Color(0xb3202020),
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' Tuesday',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: const Color(0xff202020),
                                        fontSize: 20,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '   09 Muh,\n        1446',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SalahTime(),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Azkar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AzkarItem(
                  nameOfImage:'azkarmorning_img' ,
                  titel:'Evening Azkar' ,
                ),
                AzkarItem(
                  nameOfImage:'evening_azkar_img' ,
                  titel:'Morning Azkar' ,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
