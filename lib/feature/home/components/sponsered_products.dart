import 'package:d_ecom/controller/shopping_controller.dart';
import 'package:d_ecom/feature/home/components/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants.dart';

class SponseredProducts extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        [
          ProductWidget(
            image: shoppingController.sponseredProducts[1].imgUrl,
            name: shoppingController.sponseredProducts[1].name,
            desc: shoppingController.sponseredProducts[1].description,
            price: '${shoppingController.sponseredProducts[1].price}',
            marginLeft: true,
            borderColor: kSponseredProductsColor,
            productIndex: shoppingController.sponseredProductsIndex[1],
          ),
          ProductWidget(
            image: shoppingController.sponseredProducts[2].imgUrl,
            name: shoppingController.sponseredProducts[2].name,
            desc: shoppingController.sponseredProducts[2].description,
            price: '${shoppingController.sponseredProducts[2].price}',
            marginLeft: false,
            borderColor: kSponseredProductsColor,
            productIndex: shoppingController.sponseredProductsIndex[2],
          ),
          ProductWidget(
            image: shoppingController.sponseredProducts[3].imgUrl,
            name: shoppingController.sponseredProducts[3].name,
            desc: shoppingController.sponseredProducts[3].description,
            price: '${shoppingController.sponseredProducts[3].price}',
            marginLeft: true,
            borderColor: kSponseredProductsColor,
            productIndex: shoppingController.sponseredProductsIndex[3],
          ),
          ProductWidget(
            image: shoppingController.sponseredProducts[4].imgUrl,
            name: shoppingController.sponseredProducts[4].name,
            desc: shoppingController.sponseredProducts[4].description,
            price: '${shoppingController.sponseredProducts[4].price}',
            marginLeft: false,
            borderColor: kSponseredProductsColor,
            productIndex: shoppingController.sponseredProductsIndex[4],
          ),
        ],
      ),
    );
  }
}