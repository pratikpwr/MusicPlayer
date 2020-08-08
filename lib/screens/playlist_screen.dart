import 'dart:ui';
import 'package:awesome_music/widgets/song_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_fab/sliver_fab.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverFab(
        floatingWidget: FloatingActionButton(
          backgroundColor: const Color(0xffD933C3),
          onPressed: () {},
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 34,
          ),
        ),
        floatingPosition: FloatingPosition(
          right: 36,
        ),
        expandedHeight: MediaQuery.of(context).size.height * 0.4,
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            backgroundColor: Colors.transparent,
            pinned: true,
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
            actions: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ],
            flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg'), //your image
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom:
                    Radius.circular(40),
                  ),
                ),
                child: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: true,
                    //background: Text('50 Songs | 6 hours'),
                    title: Text('A Synthwave Mix' , style: GoogleFonts.mukta(fontSize: 16 , fontWeight: FontWeight.bold),))),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                    SongTile(),
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
