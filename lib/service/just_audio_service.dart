import 'package:music_mobile_app/service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class JustAudioService implements AudioServiceClass {
  final player = AudioPlayer();
  @override
  Future<void> pauseAudio() async {
    await player.pause();
  }

  @override
  Future<void> playAudio() async {
    await player.play();
  }

  @override
  Future<Duration?> setAudioUrl(String url) async {
    print("durartionca ");
    try {
      Duration? duration = await player.setUrl(url);
    } catch (e) {
      print("justaudio $e");
    }

    /* print("durartionca ${duration?.inMinutes}"); */
    return null;
  }
}
