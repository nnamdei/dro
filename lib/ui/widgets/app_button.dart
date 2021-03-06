import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final double elevation;
  final TextStyle style;
  final double height;
  final ShapeBorder shape;
  final double width;
  final EdgeInsetsGeometry margin;

  const AppButton(
      {Key key,
      this.buttonText,
      this.buttonColor,
      this.textColor,
      this.fontSize,
      this.onPressed,
      this.fontWeight,
      this.elevation,
      this.style,
      this.height,
      this.width,
      this.margin, this.shape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: RaisedButton(
        elevation: elevation,
        color: buttonColor,
        shape: shape,
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: style,
        ),
      ),
    );
  }
}
