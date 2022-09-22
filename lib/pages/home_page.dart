import 'package:flutter/material.dart';
import 'package:moviez_streaming/pages/search_page.dart';
import 'package:moviez_streaming/theme.dart';
import 'package:moviez_streaming/widgets/images_movie_card.dart';
import 'package:moviez_streaming/widgets/new_images_movie_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 29,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moviez',
                    style: titleTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Watch much easier',
                    style: subTitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/btn_search.png',
                width: 22,
              ),
            ),
          ],
        ),
      );
    }

    Widget imagesMovie() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            ImagesMovieCard(
              title: 'John Wick 4',
              genre: 'Action, Crime',
              imageURL: 'assets/images/image_1.png',
            ),
            ImagesMovieCard(
              title: 'Bohemian',
              genre: 'Documentary',
              imageURL: 'assets/images/image_2.png',
            ),
          ],
        ),
      );
    }

    Widget newImagesMovie() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          bottom: 43,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: titleTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NewImagesMovieTile(
              title: 'Mulan Session',
              genre: 'History, War',
              imageURL: 'assets/images/image_4.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const NewImagesMovieTile(
              title: 'Beauty & Beast',
              genre: 'Sci-Fiction',
              imageURL: 'assets/images/image_3.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          imagesMovie(),
          newImagesMovie(),
        ],
      ),
    );
  }
}
