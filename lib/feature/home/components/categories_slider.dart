import 'package:d_ecom/feature/categories_page/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants.dart';

class Categoriesslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoriesWidget(
            title: 'Dairy',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Dairy',
              ));
            },
          ),
          CategoriesWidget(
            title: 'Vegetables',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Vegetables',
              ));
            },
          ),
          CategoriesWidget(
            title: 'Oil',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Oil',
              ));
            },
          ),
          CategoriesWidget(
            title: 'Snacks',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Snacks',
              ));
            },
          ),
          CategoriesWidget(
            title: 'Household Items',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Household Items',
              ));
            },
          ),
          CategoriesWidget(
            title: 'Other',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Other',
              ));
            },
          ),
        ],
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  final Image image;
  final String title;
  final Function onTapped;
  CategoriesWidget({
    this.image,
    this.onTapped,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(5),
        child: Card(
          color: Colors.green[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/app_logo.png',height: 25,),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}