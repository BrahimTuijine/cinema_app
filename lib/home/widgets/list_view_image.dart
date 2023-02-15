import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  final List<String> listImage;
  const MovieList({
    Key? key,
    required this.listImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: listImage.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 130,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  listImage[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
