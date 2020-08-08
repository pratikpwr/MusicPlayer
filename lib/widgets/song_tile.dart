import 'package:awesome_music/screens/music_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SongTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.downToUp,
                      child: MusicPlayerScreen()));
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff3b1f50),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Icon(Icons.music_note),
                  padding: EdgeInsets.all(14),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Song Title with Desc ',
                      style: GoogleFonts.mukta(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Playlist Name',
                      style: GoogleFonts.mukta(
                          fontSize: 11,
                          color: Theme.of(context).textTheme.subtitle2.color,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: const Color(0xff3b1f50),
          )
        ],
      ),
    );
  }
}
