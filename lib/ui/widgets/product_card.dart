import 'package:dro_health/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final ShapeBorder shape;

  const ProductCard({Key key, this.height, this.width, this.margin, this.shape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(""),
          Text(""),
          Text(""),
          Text(""),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.grey),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'N', style: TextStyle()),
                TextSpan(text: '500', style: TextStyle())
              ])),
            ),
          )
        ],
      ),
    );
  }
}
