import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:itri/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:itri/utils/constants/colors.dart';

class IPrimaryHeaderContainer extends StatelessWidget {
  const IPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ICurvedEdgeWidget(
      child: Container(
        color: IColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: ICircularContainer(
                backgroundColor: IColors.textWhite.withAlpha(26),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ICircularContainer(
                backgroundColor: IColors.textWhite.withAlpha(26),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
