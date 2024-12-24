import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../sebha_tab/audio_items.dart';



class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            ToggleSwitch(
              minWidth: 390.0,
              minHeight: 40.0,
              fontSize: 16.0,
              initialLabelIndex: 0,
              activeBgColor: [Color(0xFFE2BE7F)],
              activeFgColor: Color(0xff202020),
              inactiveBgColor: Color(0xff202020),
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: [
                'Radio',
                'Reciters',
              ],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            audioItem(
              stackImage: 'radiog',
              title: 'Radio Ibrahim Al-Akdar',
              icAudio: 'ic_audio_off',
              icVolume: 'Volume_on',
            ),
            const SizedBox(
              height: 10,
            ),
            audioItem(
              stackImage: 'radiog',
              title: 'Radio Al-Qaria Yassen',
              icAudio: 'Pause',
              icVolume: 'Volume_off',
            ),
            const SizedBox(
              height: 10,
            ),
            audioItem(
              stackImage: 'radiog',
              title: 'Radio Ahmed Al-trabulsi',
              icAudio: 'ic_audio_off',
              icVolume: 'Volume_on',
            ),
            const SizedBox(
              height: 10,
            ),
            audioItem(
              stackImage: 'radiog',
              title: 'Radio Addokali Mohammad Alalim',
              icAudio: 'ic_audio_off',
              icVolume: 'Volume_on',
            ),

          ],
        ),
      ),
    );
  }
}
