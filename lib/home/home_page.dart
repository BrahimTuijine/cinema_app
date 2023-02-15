import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_app/home/widgets/list_view_image.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> nowPlaying = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  final List<String> comingSoon = [
    'assets/images/aquaman.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/aquaman.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  final List<String> topMovies = [
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff2E1371),
                    Color(0xff130B2B),
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Choose Movie',
            style: TextStyle(
                fontSize: 20, fontFamily: 'Poppins', color: Colors.white),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff2E1371),
                Color(0xff130B2B),
              ],
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 36,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 17),
                          fillColor: const Color(0xff767680).withOpacity(.2),
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Now Playing',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    MovieList(listImage: nowPlaying),
                    const Text(
                      'Coming Soon',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    MovieList(listImage: comingSoon),
                    const Text(
                      'Top movies',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    MovieList(listImage: topMovies),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   topRight: Radius.circular(20),
                  // ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff8056A2),
                      Color(0xff6B55B5),
                    ],
                  ),
                ),
                width: double.infinity,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/18.png'),
                    Image.asset('assets/images/21.png'),
                    Image.asset('assets/images/22.png'),
                    Image.asset('assets/images/19.png'),
                    Image.asset('assets/images/20.png'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
