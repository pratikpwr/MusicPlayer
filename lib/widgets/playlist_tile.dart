import '../screens/playlist_screen.dart';
import '../theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return PlaylistScreen();
                  }));
                },
                child: Image.network(
                  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg',
                  height: 245,
                  width: 190,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Playlist Name',
            style: GoogleFonts.mukta(
                color: MyColors.titleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '50 songs',
            style: GoogleFonts.mukta(
              color: MyColors.subtitleColor,
              fontSize: 11,
            ),
          )
        ],
      ),
    );
  }
}
