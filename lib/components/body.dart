import 'package:flutter/material.dart';
import 'package:online_shop_ui/constant.dart';
import 'package:online_shop_ui/models/product.dart';
import 'categories.dart';
import 'item_card.dart';

class GetBody extends StatelessWidget {
  const GetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Categories(),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: productList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: productList[index],
                );
              }),
        )
      ],
    );
  }
}


