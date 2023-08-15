import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  final Function()? onClick;
  final Color? color;
  final Color? iconColor;
  final IconData icon;
  final double? radius;
  final double? padding;
  const IconBar({
    super.key,
    this.color,
    this.iconColor,
    required this.icon,
    this.radius,
    this.padding,
    this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(

        padding:  EdgeInsets.all(padding??4),
        decoration: BoxDecoration(
            color: color??Colors.white,
            borderRadius: BorderRadius.circular(radius??7)
        ),
        child: Icon(icon,color: iconColor??Colors.red.shade400,),
      ),
    );
  }
}