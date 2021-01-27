import'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/details_screen.dart';
import 'package:online_shop_app/screens/home/components/categories.dart';
import 'package:online_shop_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
          child: Text(
            "Women",
            style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: DEFAULT_PADDING,
                crossAxisSpacing: DEFAULT_PADDING,
              ),
              itemBuilder: (context, index) => 
                ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    )),
                ),
            ),
          ),
        )
      ],
    );
  }
}
