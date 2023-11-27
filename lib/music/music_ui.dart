import 'package:flutter/material.dart';
import 'package:youtube2/music/music_moddel.dart';
import 'package:youtube2/music/music_card.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
        ),
        title: Text(
          'MUSIC',
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            MusicCard(items[0]),
            MusicCard(items[1]),
            MusicCard(items[2]),
            MusicCard(items[3]),
            MusicCard(items[4]),
            MusicCard(items[5]),
          ],
        ),
      ),
    );
  }
}
