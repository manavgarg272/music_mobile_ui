import 'package:flutter/material.dart';
import 'package:music_mobile_app/music_screen/tab_screens/list_widget.dart';

class RecentScreenPage extends StatefulWidget {
  const RecentScreenPage({super.key});

  @override
  State<RecentScreenPage> createState() => _RecentScreenPageState();
}

class _RecentScreenPageState extends State<RecentScreenPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height / 2.8,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  width: 200,
                  child: Column(
                    children: [
                      Image.asset('assets/images/image_1.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'R&B Playlist',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            Text(
                              'Chill your mind',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffA5A5A5),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/image_1.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'R&B Playlist',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            Text(
                              'Chill your mind',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffA5A5A5),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Your favourites',
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 15),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [YourFavourateWidget(), YourFavourateWidget(), YourFavourateWidget(), YourFavourateWidget()],
            ),
          )
        ],
      ),
    );
  }
}
