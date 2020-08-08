import '../theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 38,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 15,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width - 40,
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'My Delorian',
                        style: GoogleFonts.mukta(
                            color: MyColors.titleColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Playlist name',
                        style: GoogleFonts.mukta(
                            color: MyColors.subtitleColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: MyColors.titleColor,
                          size: 28,
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(3),
            decoration: new BoxDecoration(
              color: MyColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(55)),
              child: Image.network(
                'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/31c92984251837.5d569d8cc001b.jpg',
                height: 95,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
