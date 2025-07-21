import 'package:flutter/material.dart';
import 'package:itri/features/shop/screens/product_review/widgets/progress_indicator_and_rating.dart';

class IOverallProductRating extends StatelessWidget {
  const IOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              IRatingProgressIndicator(text: '5', value: 1.0),
              IRatingProgressIndicator(text: '4', value: 0.8),
              IRatingProgressIndicator(text: '3', value: 0.6),
              IRatingProgressIndicator(text: '2', value: 0.4),
              IRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],);
  }
}

