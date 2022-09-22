import 'package:flutter/material.dart';
import 'package:moviez_streaming/theme.dart';

class NewImagesMovieTile extends StatelessWidget {
  final String title;
  final String genre;
  final String imageURL;
  const NewImagesMovieTile({
    super.key,
    required this.title,
    required this.genre,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 127,
          margin: const EdgeInsets.only(
            right: 20,
            // bottom: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            image: DecorationImage(
              image: AssetImage(imageURL),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
            const SizedBox(
              height: 20,
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
                  'assets/images/star.png',
                  width: 18,
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/images/star.png',
                  width: 18,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
