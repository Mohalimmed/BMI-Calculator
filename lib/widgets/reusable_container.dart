import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {

  final Color? color;
  final Widget? child;
  final Function()? onPress;
  const ReusableContainer({super.key,
    this.color,  this.child,  this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color
        ),
        child: child,
      ),
    );
  }
}
