import 'package:d_ecom/Constants.dart';
import 'package:d_ecom/controller/shopping_controller.dart';
import 'package:d_ecom/feature/detailed_page/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemWidget extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).size.height / 10,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: GetX<ShoppingController>(builder: (controller) {
          return ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(Detailedpage(
                      itemIndex: index,
                    ));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(5),
                          child: Image.network(
                            controller.items[index].imgUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.items[index].name,
                                  style: kItemTitle(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  controller.items[index].description,
                                  style: kItemDescription(),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '${controller.items[index].price}',
                                  style: kItemPrice(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}