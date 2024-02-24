import 'package:flutter/material.dart';
import 'package:music_mobile_app/music_screen/manager/music_change_notifier.dart';
import 'package:provider/provider.dart';

class YourFavourateWidget extends StatefulWidget {
  const YourFavourateWidget({super.key});

  @override
  State<YourFavourateWidget> createState() => _YourFavourateWidgetState();
}

class _YourFavourateWidgetState extends State<YourFavourateWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MusicChangeNoitifier>().playAudiodUrl(audioUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/image_2.png'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bye Bye',
                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Text(
                        'Marshmello, Juice WRLD',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xffA5A5A5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: const Text(
                '2.09',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
