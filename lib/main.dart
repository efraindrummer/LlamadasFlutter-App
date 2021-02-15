import 'package:calling/screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:calling/screens/dialScreen/dial_screen.dart';
import 'package:calling/screens/groupCall/group_call_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AudioCallWithImage(),
      routes: {
        'audio_call_image' : ( _ ) => AudioCallWithImage(),
        'dial_screen'      : ( _ ) => DialScreen(),
        'group_call'       : ( _ ) => GroupCallScreen()
      },
    );
  }
}
