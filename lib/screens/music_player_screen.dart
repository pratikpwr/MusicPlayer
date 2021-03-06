import '../theme/colors.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor1,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onHorizontalDragDown: (DragDownDetails dragDownDetails) {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 8,
                width: 60,
                decoration: BoxDecoration(
                    color: MyColors.secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(250)),
                child: Image.network(
                  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/31c92984251837.5d569d8cc001b.jpg',
                  height: 280,
                  width: 280,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text('My Delorean',
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: 5,
                ),
                Text('A Synthwave Mix',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    backgroundColor: const Color(0xff3b1f50),
                    value: 24 / 100,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01:32',
                        style: TextStyle(
                            fontSize: 12, color: MyColors.subtitleColor),
                      ),
                      Text('05:23',
                          style: TextStyle(
                              fontSize: 12, color: MyColors.subtitleColor))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.volume_down,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.skip_previous,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                      onPressed: () {}),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: MyColors.titleColor,
                          size: 30,
                        ),
                        onPressed: () {}),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.skip_next,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.volume_up,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 80,
              decoration: BoxDecoration(
                  color: MyColors.backgroundColor2,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          color: MyColors.titleColor,
                          size: 24,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.queue_music,
                          color: MyColors.titleColor,
                          size: 24,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: MyColors.titleColor,
                          size: 24,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
