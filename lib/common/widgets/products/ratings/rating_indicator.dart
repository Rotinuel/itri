import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:itri/utils/constants/colors.dart';

class IRatingBarIndicator extends StatelessWidget {
  const IRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: IColors.grey, 
      itemBuilder: (_, _) => const Icon(Iconsax.star1, color: IColors.primary),
      );
  }
}