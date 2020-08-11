import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import '../../../index.dart';

class MusicPlayer extends StatefulWidget {
  MusicPlayer({Key key}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

/*
 * 播放状态
 */
enum PlayerState { stopped, playing, paused }

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer _audioPlayer;
  // 音乐的时长
  Duration musicDuration;
  Duration musicMaxPosition;

  // 播放状态
  PlayerState playerState = PlayerState.stopped;

  @override
  void initState() {
    super.initState();
    initAudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
    _positionSubscription?.cancel();
    _audioPlayerStateSubscription?.cancel();
    _audioPlayerMaxTimer?.cancel();
  }

  get isPlaying => playerState == PlayerState.playing;
  get isPaused => playerState == PlayerState.paused;

  get durationText =>
      musicDuration != null ? musicDuration.toString().split('.').first : '';

  get positionText =>
      musicMaxPosition != null ? musicMaxPosition.toString().split('.').first : '';

  // 是否静音
  bool isMuted = false;

  StreamSubscription _positionSubscription;
  StreamSubscription _audioPlayerMaxTimer;
  StreamSubscription _audioPlayerStateSubscription;
  

  void initAudioPlayer() {
    _audioPlayer = AudioPlayer();

    // 更新音频的当前位置 制作进度条。
    _positionSubscription = _audioPlayer.onAudioPositionChanged.listen((p) {
      setState(() => musicDuration = p);
      // print('当前时间 ${musicDuration?.inMilliseconds?.toDouble()}');
      // print('总时间 ${musicMaxPosition?.inMilliseconds?.toDouble()}');
    });
    _audioPlayerMaxTimer = _audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() => musicMaxPosition = d);
    });

    // 使用它来显示播放器是播放，停止还是暂停。
    _audioPlayerStateSubscription =
        _audioPlayer.onPlayerStateChanged.listen((s) {
          print('状态：$s');
      // if (s == AudioPlayerState.PLAYING) {
      //   setState(() => musicDuration = _audioPlayer.getDuration() as Duration);
      // } else if (s == AudioPlayerState.STOPPED) {
      //   onComplete();
      //   setState(() {
      //     musicPosition = musicDuration;
      //   });
      // }
    }, onError: (msg) {
      // setState(() {
      //   playerState = PlayerState.stopped;
      //   musicDuration = Duration(seconds: 0);
      //   musicPosition = Duration(seconds: 0);
      // });
    });
  }

  void onComplete() {
    setState(() => playerState = PlayerState.stopped);
  }

  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: double.infinity,
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text('音乐播放器'),
            Row(mainAxisSize: MainAxisSize.min, children: [
              IconButton(
                onPressed: () async {
                  await _audioPlayer
                      .play('http://study.closeeyes.cn/falling-star.mp3');
                },
                iconSize: 64.0,
                icon: Icon(Icons.play_arrow),
                color: Colors.cyan,
              ),
              IconButton(
                onPressed: () async {
                  await _audioPlayer.pause();
                },
                iconSize: 64.0,
                icon: Icon(Icons.pause),
                color: Colors.cyan,
              ),
              IconButton(
                onPressed: () async {
                  await _audioPlayer.stop();
                },
                iconSize: 64.0,
                icon: Icon(Icons.stop),
                color: Colors.cyan,
              ),
            ]),
            // slider
            // Slider(
            //     value: musicPosition?.inMilliseconds?.toDouble() ?? 0.0,
            //     onChanged: (double value) {
            //       // print(value);
            //       // return audioPlayer.seek((value / 1000).roundToDouble());
            //     },
            //     min: 0.0,
            //     max: musicMaxPosition?.inMilliseconds?.toDouble() ?? 100),
            Slider(
              value: musicDuration?.inMilliseconds?.toDouble() ?? 0.0,
              min: 0.0,
              max: musicMaxPosition?.inMilliseconds?.toDouble() ?? 0,
              onChanged: (newValue) {
                print('onChanged:$newValue');
              },
              onChangeStart: (startValue) {
                print('onChangeStart:$startValue');
              },
              onChangeEnd: (endValue) {
                print('onChangeEnd:$endValue');
              },
              // label: '$_value dollars',
            ),
            Row(
              children: [
                Text(durationText),
                SizedBox(width: 50,),
                Text(positionText),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
