abstract class AudioServiceClass {
  Future<void> playAudio();
  Future<void> pauseAudio();
  Future<Duration?> setAudioUrl(String url);
}
