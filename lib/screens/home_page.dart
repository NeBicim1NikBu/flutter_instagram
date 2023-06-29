import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

final growableList = <String>[
  'memesbutspicy',
  'nebicim1nikbu',
  'mert_taylan',
  "harmon.developer",
  "noobbaba",
  "noobmert",
  "noobyigit",
  "noobanne",
  "mellowthecat",
  "A",
  "B"
]; // Creates growable list.

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final random = Random();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              floating: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Instagram',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.send, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                var likes = random.nextInt(100000);
                var comments = random.nextInt(10000);

                return Container(
                  color: Colors.black,
                  height: 530,
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ProfilePicture(
                                  name: '${growableList[index]}',
                                  radius: 12,
                                  fontsize: 10,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  growableList[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const Icon(Icons.more_vert_outlined,
                                color: Colors.white),
                          ],
                        ),
                      ),
                      Container(
                          child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 5, left: 5, top: 5, bottom: 5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border_outlined,
                                    color: Colors.white),
                                SizedBox(width: 5),
                                Icon(Icons.mode_comment_outlined,
                                    color: Colors.white),
                                SizedBox(width: 5),
                                Icon(Icons.send, color: Colors.white),
                              ],
                            ),
                            Icon(Icons.more_vert_outlined, color: Colors.white),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 7),
                          child: Text(
                            "$likes beğeni",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      SizedBox(height: 2),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 7),
                        child: Row(
                          children: [
                            Text(
                              growableList[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(" "),
                            Text(
                              'Herkese merhaba arkadaşlar',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 7),
                          child: Text(
                            "$comments yorumu görüntüle",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                    ],
                  )),
                );
              },
              childCount: growableList.length,
            )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: "Add",
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_outlined),
                label: "Reels",
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: "Profile",
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
              ),
            ]),
      ),
    );
  }
}
