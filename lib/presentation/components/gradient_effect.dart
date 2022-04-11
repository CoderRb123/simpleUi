import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientEffect extends StatelessWidget {
  final Widget? child;

  const GradientEffect({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // For Gradient
        
        SizedBox(
          width: 100.sw,
          height: 100.sh,
          child: child,
        )
      ],
    );
  }
}
