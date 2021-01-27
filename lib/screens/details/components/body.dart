import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app/screens/details/components/color_and_size.dart';
import 'package:online_shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_app/screens/details/components/description.dart';
import 'package:online_shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: DEFAULT_PADDING,
                    right: DEFAULT_PADDING,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: DEFAULT_PADDING / 2),
                      Description(product: product),
                      SizedBox(height: DEFAULT_PADDING / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: DEFAULT_PADDING / 2),
                      AddToCart(product: product)
                    ],
                  )
                ),
                ProductTitleWithImage(product: product),
              ],
            )
          )
        ],
      )
    );
  }
}
