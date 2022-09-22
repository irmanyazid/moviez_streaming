import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  const RatingItem({
    super.key,
    required this.index,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/images/star_active.png'
          : 'assets/images/star.png',
      width: 18,
    );
  }
}
