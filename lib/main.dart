import 'package:flutter/material.dart';
import 'package:spotify_clone/view/signin.dart';
import 'package:spotify_clone/view/song_player.dart';

void main() {
  // system overlays
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SigninScreen(),
        '/audioPlayer': (context) => const AudioPlayerScreen(),
      },
    );
  }
}

