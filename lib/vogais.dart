import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Vogais extends StatefulWidget {
  const Vogais({Key? key}) : super(key: key);

  @override
  _VogaisState createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  AudioPlayer _audioPlayer = AudioPlayer();
  static final AudioCache _audioCache = AudioCache(prefix: "assets/audios/");

  double volume = 0.5;

  _executar(String nomeAudio) async {
    _audioPlayer = await _audioCache.play(nomeAudio + ".mp3");
    _audioPlayer.setVolume(volume);
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      //scrollDirection: Axis.vertical,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
