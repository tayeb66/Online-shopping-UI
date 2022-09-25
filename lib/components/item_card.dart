import 'package:flutter/material.dart';
import 'package:online_shop_ui/pages/product_details/product_details.dart';

import '../constant.dart';
import '../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function? press;

  const ItemCard({Key? key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>
            ProductDetails(product: product,)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                // height: 180,
                // width: 160,
                decoration: BoxDecoration(
                    color: product?.color,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(product?.image ?? ''),
                      fit: BoxFit.contain,
                    )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product?.title ?? '',
              style: const TextStyle(color: kTextColor, fontSize: 16),
            ),
            Text(
              '\$${product?.price.toString()}',
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
