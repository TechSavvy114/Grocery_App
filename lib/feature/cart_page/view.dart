import 'package:d_ecom/controller/cart_controller.dart';
import 'package:d_ecom/feature/home/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants.dart';
import 'components/bottom_sheet_widget.dart';
import 'components/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Obx(
            () => cartController.itemCount != 0
            ? CartItemWidget()
            : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your Cart is Empty'),
              FlatButton(
                onPressed: () {
                  Get.offAll(HomePage());
                },
                child: Text(
                  'Shop Now',
                  style: TextStyle(color: Colors.white),
                ),
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Obx(
            () => cartController.itemCount != 0
            ? BottomSheetWidget()
            : BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              height: 0,
            );
          },
        ),
      ),
    );
  }
}