import '../theme/colors.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/playlist_tile.dart';
import '../widgets/song_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Library',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 55,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: MyColors.secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Song or Artist...',
                            style: Theme.of(context).textTheme.subtitle2,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Playlists',
                    style: GoogleFonts.mukta(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: MyColors.titleColor),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Hero(tag: 'hero_tag', child: PlaylistsTile()),
                  PlaylistsTile(),
                  PlaylistsTile(),
                  PlaylistsTile(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 12),
              child: Text(
                'Favorites',
                style: GoogleFonts.mukta(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: MyColors.titleColor),
              ),
            ),
            SongTile(),
            SongTile(),
            SongTile(),
            SongTile(),
            SongTile(),
            SongTile(),
          ],
        ),
      ),
      floatingActionButton: MyFloatingActionButton(),
    );
  }
}
