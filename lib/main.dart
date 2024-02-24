import 'package:flutter/material.dart';
import 'package:music_mobile_app/music_screen/manager/music_change_notifier.dart';
import 'package:music_mobile_app/music_screen/music_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider<MusicChangeNoitifier>(create: (context) => MusicChangeNoitifier()),
      ], child: const MusicScreenPage()),
    );
  }
}
