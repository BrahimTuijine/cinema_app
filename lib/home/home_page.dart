import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_app/home/widgets/list_view_image.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> nowPlaying = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  final List<String> comingSoon = [
    'assets/images/aquaman.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  final List<String> topMovies = [
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2E1371),
            Color(0xff130B2B),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const Center(
              child: Text(
                'Choose Movie',
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Poppins', color: Colors.white),
              ),
            ),
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
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 17),
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
                  fontSize: 17, fontFamily: 'Poppins', color: Colors.white),
            ),
            MovieList(listImage: nowPlaying),
            const Text(
              'Coming Soon',
              style: TextStyle(
                  fontSize: 17, fontFamily: 'Poppins', color: Colors.white),
            ),
            MovieList(listImage: comingSoon ),
            const Text(
              'Top movies',
              style: TextStyle(
                  fontSize: 17, fontFamily: 'Poppins', color: Colors.white),
            ),
            MovieList(listImage: topMovies),
          ],
        ),
      ),
    ));
  }
}
