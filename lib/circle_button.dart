import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    this.bgColor = Colors.black,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    required this.icon,
    required this.text,
  });

  final Color bgColor;
  final Color iconColor;
  final Color textColor;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              width: 30,
              height: 30,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 11,
                color: textColor,
              ),
            ),
          ],
        ));
  }
}
