import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 32,
              width: 40,
              child: OutlinedButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                onPressed: (){
                  if(numberOfItem >1){
                    setState(() {
                      numberOfItem--;
                    });
                  }
                },
                child: Icon(Icons.remove),

              ),
            ),
            const SizedBox(width: 10,),
            // if items is less than 10 then it shows 01, 01 like that
            Text(numberOfItem.toString().padLeft(2, '0'),style: Theme.of(context).textTheme.headline6,),
            const SizedBox(width: 10,),
            SizedBox(
              height: 32,
              width: 40,
              child: OutlinedButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                onPressed: (){
                  setState(() {
                    numberOfItem++;
                  });
                },
                child: Icon(Icons.add),

              ),
            ),
          ],
        ),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFF6464),
          ),
          child: Icon(Icons.favorite,color: Colors.white,),
        )
      ],
    );
  }
}