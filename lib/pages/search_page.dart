import 'package:flutter/material.dart';
import 'package:moviez_streaming/theme.dart';
import 'package:moviez_streaming/widgets/search_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Container(
        padding: const EdgeInsets.only(
          top: 38,
          left: 24,
          right: 24,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: whiteColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search',
            hintStyle: subTitleTextStyle,
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff0D0846),
            ),
          ),
        ),
      );
    }

    Widget searchresult() {
      return Container(
        margin: const EdgeInsets.only(
          top: 35,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: 'Search Result',
                style: titleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
                children: [
                  TextSpan(
                    text: ' (3)',
                    style: titleTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SearchCard(
              title: 'The Dark II',
              genre: 'Horror',
              imageURL: 'assets/images/image_5.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchCard(
              title: 'The Dark Knight',
              genre: 'Heroes',
              imageURL: 'assets/images/image_6.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchCard(
              title: 'The Dark Tower',
              genre: 'Action',
              imageURL: 'assets/images/image_7.png',
            ),
          ],
        ),
      );
    }

    Widget submitButton() {
      return Container(
        width: 220,
        height: 50,
        margin: const EdgeInsets.only(
          top: 73,
          left: 77,
          right: 78,
          bottom: 70,
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: blackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(37),
            ),
          ),
          child: Text(
            'Suggest Movie',
            style: whiteTittleTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          search(),
          searchresult(),
          submitButton(),
        ],
      ),
    );
  }
}
