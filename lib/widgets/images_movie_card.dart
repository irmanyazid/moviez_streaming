import 'package:flutter/material.dart';
import 'package:moviez_streaming/theme.dart';

class ImagesMovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final String imageURL;

  const ImagesMovieCard({
    super.key,
    required this.title,
    required this.genre,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 282,
            margin: const EdgeInsets.only(
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 207,
                  margin: const EdgeInsets.only(
                    bottom: 19,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                      image: AssetImage(imageURL),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor.withOpacity(0.2),
                        blurRadius: 50,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          genre,
                          style: subTitleTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/star_active.png',
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Image.asset(
                          'assets/images/star_active.png',
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Image.asset(
                          'assets/images/star_active.png',
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Image.asset(
                          'assets/images/star_active.png',
                          width: 18,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Image.asset(
                          'assets/images/star_active.png',
                          width: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
