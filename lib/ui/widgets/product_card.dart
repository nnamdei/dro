import 'package:dro_health/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:dro_health/data/models/Product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;
  final EdgeInsetsGeometry margin;
  final ShapeBorder shape;
  final String text;

  const ProductCard(
      {Key key, this.margin, this.shape, this.text, this.product, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(tag:"${product.id}",child: Image.asset(product.image,height: 100,width: 100,)),
            Text(product.title),
            Text(product.title),
            Text(product.description),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 22,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.grey),
                child: Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'N', style: TextStyle()),
                    TextSpan(text: " ${product.price}", style: TextStyle())
                  ])),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
