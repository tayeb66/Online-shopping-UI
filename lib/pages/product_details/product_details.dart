import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_ui/models/product.dart';
import '../../constant.dart';
import 'components/cart_counter.dart';
import 'components/color_and_size.dart';

class ProductDetails extends StatefulWidget {
  final Product? product;

  const ProductDetails({Key? key, this.product}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have different color
      backgroundColor: widget.product?.color,
      appBar: getAppbar(),
      body: getBody(),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      // each product have different color
      backgroundColor: widget.product?.color,
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height - 85,
            child: Stack(
              children: [
                Container(
                  // height: 500,
                  margin: EdgeInsets.only(top: size.height * .34),
                  padding: EdgeInsets.only(
                      top: size.height * .18,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      )),
                  child: Column(
                    children: [
                      // this class implements with product size & color
                      ColorAndSize(
                        product: widget.product,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          '${widget.product?.description}',
                          style: TextStyle(color: kTextColor),
                        ),
                      ),
                       // this class implements with cart counter
                       CartCounter(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: widget.product!.color!
                                  ),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/add_to_cart.svg'),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            ElevatedButton(
                                style: TextButton.styleFrom(
                                    shape: StadiumBorder(),
                                    backgroundColor: widget.product?.color,
                                    minimumSize: Size(MediaQuery
                                        .of(context)
                                        .size
                                        .width / 1.5, 50)
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Buy now'.toUpperCase(), style: TextStyle(fontSize: 20),))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Aristocratic Bag',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Office Code',
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'price\n',
                                  style: TextStyle(fontSize: 18)),
                              TextSpan(
                                  text: '\$${widget.product?.price.toString()}',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))
                            ]),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Image.asset(
                              widget.product?.image ?? '',
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

