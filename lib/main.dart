import 'package:flutter/material.dart';
import 'package:youtube2/model/video_model.dart';
import 'package:youtube2/music/music_ui.dart';
import 'package:youtube2/ui/video_card.dart';

void main() {
  runApp(Page1());
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black87, size: 40),
        leading: Icon(Icons.menu),
        title: Text(
          'YouTube',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FilterChip(
                          elevation: 0,
                          label: Text(
                            'Gaming',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onSelected: (value) {}),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FilterChip(
                          elevation: 0,
                          label: Text(
                            'Music',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onSelected: (value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Music()));
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FilterChip(
                          elevation: 0,
                          label: Text(
                            'Programming',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onSelected: (value) {}),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FilterChip(
                          elevation: 0,
                          label: Text(
                            'Mobile Devolpment',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onSelected: (value) {}),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FilterChip(
                          elevation: 0,
                          label: Text(
                            'Shorts',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          onSelected: (value) {}),
                    ),
                  ],
                ),
              ),
              Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 16.0,
              ),
              videoCard(items[0]),
              videoCard(items[1]),
              videoCard(items[2]),
              videoCard(items[3]),
              videoCard(items[4]),
              videoCard(items[5]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.red,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: 'Shorts'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'New Video'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play), label: 'PlayList'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
