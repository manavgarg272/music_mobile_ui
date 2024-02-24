import 'package:flutter/material.dart';
import 'package:music_mobile_app/service/audio_service.dart';
import 'package:music_mobile_app/service/just_audio_service.dart';

class MusicChangeNoitifier extends ChangeNotifier {
  final AudioServiceClass _audioService = JustAudioService();
  Future<void> playAudiodUrl({required String audioUrl}) async {
    await _audioService.setAudioUrl(audioUrl);
    await _audioService.playAudio();
  }
}
