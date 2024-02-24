import 'package:flutter/material.dart';
import 'package:music_mobile_app/music_screen/tab_screens/recent_screen.dart';

class MusicScreenPage extends StatefulWidget {
  const MusicScreenPage({super.key});

  @override
  State<MusicScreenPage> createState() => _MusicScreenPageState();
}

class _MusicScreenPageState extends State<MusicScreenPage> with TickerProviderStateMixin {
  late TabController _controller;
  int selectedIndex = 0;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 1.3 * size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(17, 9, 25, 1),
                Color.fromRGBO(17, 9, 25, 1),
                Color.fromRGBO(75, 21, 128, 1),
                Color.fromRGBO(75, 21, 128, 1),
                Color.fromRGBO(75, 21, 128, 1),
                Color.fromRGBO(21, 10, 34, 1),
                Color.fromRGBO(21, 10, 34, 1),
              ],
            )),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back !',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'What do you feel like today ?',
                          style: TextStyle(color: Color(0xffA5A5A5), fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 60,
                  ),
                  SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(size.height / 100),
                          isDense: true,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffA5A5A5),
                          ),
                          fillColor: const Color(0xff433E48),
                          hintText: 'Search song, playlist , articles ...',
                          hintStyle: TextStyle(color: const Color(0xffA5A5A5), fontSize: size.height / 70),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              width: 1.0,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  SizedBox(
                    width: size.width,
                    child: TabBar(
                      controller: _controller,
                      indicatorWeight: 1,
                      isScrollable: true,
                      labelColor: Colors.white,
                      dividerColor: Colors.transparent,
                      indicatorPadding: EdgeInsets.zero,
                      indicator: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 3.0),
                        ),
                      ),
                      tabs: const [
                        Tab(
                          text: 'Recent',
                        ),
                        Tab(
                          text: 'Top50',
                        ),
                        Tab(
                          text: 'Chill',
                        ),
                        Tab(
                          text: 'R&B',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Expanded(child: TabBarView(controller: _controller, children: const [RecentScreenPage(), RecentScreenPage(), RecentScreenPage(), RecentScreenPage()]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
