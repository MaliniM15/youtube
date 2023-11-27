import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube2/music/music_moddel.dart';

Widget MusicCard(MusicModel model) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 20.0),
      // Lets start by thumbnail and duration
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(model.thumnail!),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                right: 20.0,
                bottom: 7.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                  child: Text(
                    model.videoduration!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.black87),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54.0,
                height: 54.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(model.avatar!),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.videotitle!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      '    ${model.channel}   -   ${model.views}',
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
        ],
      ),
    ),
  );
}
