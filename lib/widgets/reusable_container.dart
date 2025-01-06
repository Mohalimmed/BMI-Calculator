import 'package:flutter/material.dart';

class reusableContainer extends StatelessWidget {

  final Color? color;
  final Widget? child;
  const reusableContainer({super.key,
    this.color,  this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: child,
    );
  }
}
