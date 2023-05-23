import 'package:flutter/material.dart';
import 'package:volume_controller/volume_controller.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _volumeListenerValue = 0;
  double _getVolume = 0;
  double _setVolumeValue = 0;

  @override
  void initState() {
    super.initState();
    // Listen to system volume change
    VolumeController().listener((volume) {
      setState(() => _volumeListenerValue = volume);
    });

    VolumeController().getVolume().then((volume) => _setVolumeValue = volume);
  }

  @override
  void dispose() {
    VolumeController().removeListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Volume Plugin example app'),
        ),
        body: Column(
          children: [
            Text('Current volume: $_volumeListenerValue'),
            Row(
              children: [
                Text('Set Volume:'),
                Flexible(
                  child: Slider(
                    min: 0,
                    max: 1,
                    onChanged: (double value) {
                      _setVolumeValue = value;
                      VolumeController().setVolume(_setVolumeValue);
                      setState(() {});
                    },
                    value: _setVolumeValue,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Volume is: $_getVolume'),
                TextButton(
                  onPressed: () async {
                    _getVolume = await VolumeController().getVolume();
                    setState(() {});
                  },
                  child: Text('Get Volume'),
                ),
              ],
            ),
            TextButton(
              onPressed: () => VolumeController().muteVolume(),
              child: Text('Mute Volume'),
            ),
            TextButton(
              onPressed: () => VolumeController().maxVolume(),
              child: Text('Max Volume'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Show system UI:${VolumeController().showSystemUI}'),
                TextButton(
                  onPressed: () => setState(() => VolumeController().showSystemUI = !VolumeController().showSystemUI),
                  child: Text('Show/Hide UI'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}