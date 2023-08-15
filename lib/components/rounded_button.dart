import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.color,
    required this.icon,
    this.elevation,
    required this.onAddOrSubtract
  });
  final void Function() onAddOrSubtract;
  final Color? color;
  final IconData icon;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onAddOrSubtract,
      elevation: elevation??0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          width: 40,
          height: 40
      ),
      fillColor: color,
      child: Icon(icon),

    );
  }
}
