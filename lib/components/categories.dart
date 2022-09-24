import 'package:flutter/material.dart';

import '../constant.dart';

/// We need stateful widget for categories
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hand Bag',
    'Jewellery',
    'Footwear',
    'Dresses',
  ];
  var selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return buildCategories(index);
        },
      ),
    );
  }

  Widget buildCategories(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                  selectedItem == index ? kTextColor : Colors.black.withOpacity(.5)),
            ),
            Container(
              margin: const EdgeInsets.only(top: kDefaultPaddin / 10),
              height: 2,
              width: 30,
              color: selectedItem == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}