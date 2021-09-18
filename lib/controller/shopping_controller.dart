import 'package:d_ecom/model/item.dart';
import 'package:get/get.dart';
import 'dart:math';

class ShoppingController extends GetxController {
  var items = List<Item>().obs;
  var latestProducts = List<Item>().obs;
  var topProducts = List<Item>().obs;
  var sponseredProducts = List<Item>().obs;
  var exclusiveProducts = List<Item>().obs;
  var latestProductsIndex = List<int>().obs;
  var topProductsIndex = List<int>().obs;
  var sponseredProductsIndex = List<int>().obs;
  var exclusiveProductsIndex = List<int>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
    fetchLatestProducts();
    fetchTopProducts();
    fetchSponseredProducts();
    fetchExclusiveProducts();
  }

  void fetchItems() async {
    var itemsResult = [
      Item(
        id: 1,
        name: 'Amul',
        description: 'Amul pure/Extra cream/ Double toned/ 1Lit',
        price: 65,
        inStock: true,
        category: 'Dairy',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/full_screen/pro_176.jpg?ts=1624537541',
      ),
      Item(
        id: 2,
        name: 'Patanjali Ghee',
        description: '100% pure / Neatly packed / 1lit',
        price: 500,
        inStock: true,
        category: 'Dairy',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/11196a.jpg?ts=1587129710',
      ),
      Item(
        id: 3,
        name: 'Amul Cheese',
        description: 'Freshly wrapped / 100% pure / 100gm',
        price: 110,
        inStock: true,
        category: 'Dairy',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/125240a.jpg?ts=1628490222',
      ),
      Item(
        id: 4,
        name: 'Mother Dairy',
        description:
        'Freshly wraped paneer / Extra smooth / 100% pure / 200gm',
        price: 80,
        inStock: true,
        category: 'Dairy',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/192b.jpg?ts=1613137361',
      ),
      Item(
        id: 5,
        name: 'Mushroom',
        description: 'Freshly wrapped / High quality /  200 gm',
        price: 55,
        inStock: true,
        category: 'Vegetables',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/253317a.jpg?ts=1610740381',
      ),
      Item(
        id: 6,
        name: 'Carrot',
        description:
        'Freshly wrapped / High quality /500gm',
        price: 50,
        inStock: true,
        category: 'Vegetables',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/23383a.jpg?ts=1628148347',
      ),
      Item(
        id: 7,
        name: 'Black Brinjal',
        description:
        'Fresh /High quality / 200gm',
        price: 20,
        inStock: true,
        category: 'Vegetables',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/9098a.jpg?ts=1610740137',
      ),
      Item(
        id: 8,
        name: 'Fortune Oil',
        description:
        ' Fortune Soya Health Refined Soyabean Oil  ',
        price: 156,
        inStock: true,
        category: 'Oil',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/52a.jpg?ts=1624964816',
      ),
      Item(
        id: 9,
        name: 'Patanjali Mustard Oil',
        description:
        ' High quality / 100% pure / 1Lit',
        price: 190,
        inStock: true,
        category: 'Oil',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/11299a.jpg?ts=1591007188',
      ),
      Item(
        id: 10,
        name: 'Haldiram Lite Mixture Namkeen',
        description:
        ' Made up with high protein and many spiecs / 1Kg',
        price: 30,
        inStock: true,
        category: 'Snacks',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/19251a.jpg?ts=1612441031',
      ),
      Item(
        id: 11,
        name: 'Haldiram Khatta Metha Namkeen',
        description:
        ' Made up with high protein and many spiecs / 1Kg',
        price: 150,
        inStock: true,
        category: 'Snacks',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/19292a.jpg?ts=1623245145',
      ),
      Item(
        id: 12,
        name: 'Haldiram Panchratan Namkeen',
        description:
        ' Made up with high protein and many spiecs / 1Kg',
        price: 220,
        inStock: true,
        category: 'Snacks',
        imgUrl:
        'https://cdn.grofers.com/app/images/products/sliding_image/17707a.jpg?ts=1591708309',
      ),
    ];
    items.value = itemsResult;
  }

  void fetchLatestProducts() async {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      latestProducts.add(items[randomItem]);
      latestProductsIndex.add(randomItem);
    }
  }

  void fetchTopProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      topProducts.add(items[randomItem]);
      topProductsIndex.add(randomItem);
    }
  }

  void fetchSponseredProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      sponseredProducts.add(items[randomItem]);
      sponseredProductsIndex.add(randomItem);
    }
  }

  void fetchExclusiveProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      exclusiveProducts.add(items[randomItem]);
      exclusiveProductsIndex.add(randomItem);
    }
  }
}