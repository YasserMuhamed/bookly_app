import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.labelText,
    this.onPressed,
    this.borderRadius,
    this.textColor,
    this.backgroundColor,
  });
  final Color? textColor;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final String labelText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Text(
          labelText,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
