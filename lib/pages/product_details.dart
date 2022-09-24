import 'package:flutter/material.dart';
import 'package:online_shop_ui/models/product.dart';
import 'package:online_shop_ui/pages/home_page.dart';

class ProductDetails extends StatefulWidget {
   final Product? product;
  const ProductDetails({Key? key,this.product}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have different color
      backgroundColor: widget.product?.color,
      appBar:AppBar(
        // each product have different color
        backgroundColor: widget.product?.color,
        elevation: 0.0,
      )
    );
  }
}
