import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  final Product? product;
  const ColorAndSize({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children:  const[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(children: [
              const TextSpan(
                  style: TextStyle(color: kTextColor),
                  text: 'Size\n'),
              TextSpan(
                  text: '${product?.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold))
            ]),
          ),
        )
      ],
    );
  }
}