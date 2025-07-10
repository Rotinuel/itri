import 'package:flutter/material.dart';
import 'package:itri/common/widgets/custom_shapes/curved_edges/curved_edges.dart';


class ICurvedEdgeWidget extends StatelessWidget {
  const ICurvedEdgeWidget({
    super.key,this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ICustomCurvedEdges(),
      child: child,
    );
  }
}