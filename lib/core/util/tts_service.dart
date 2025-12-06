// import 'package:flutter_tts/flutter_tts.dart';
//
// class TtsService {
//   final FlutterTts _tts = FlutterTts();
//
//   TtsService() {
//     _tts.setLanguage("vi-VN"); // giọng đọc tiếng Việt
//     _tts.setSpeechRate(0.45); // tốc độ
//     _tts.setPitch(1.0); // cao độ
//   }
//
//   Future<void> speak(String text) async {
//     if (text.isEmpty) return;
//     await _tts.stop();
//     await _tts.speak(text);
//   }
//
//   Future<void> stop() async {
//     await _tts.stop();
//   }
//
//   void dispose() {
//     _tts.stop();
//   }
// }

import 'dart:developer';

import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  final FlutterTts _tts = FlutterTts();
  bool isReady = false;

  TtsService() {
    _initTts();
  }

  Future<void> _initTts() async {
    log("🔧 INIT TTS START");

    await _tts.setSpeechRate(0.5);
    await _tts.setPitch(1.0);
    await _tts.setVolume(1.0);

    isReady = true;
    log("✅ INIT TTS DONE");
  }

  Future<void> speak(String text) async {
    if (!isReady) {
      log("⛔ TTS NOT READY YET");
      return;
    }

    log("📢 START SPEAKING");
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }

  void dispose() {
    _tts.stop();
  }
}
