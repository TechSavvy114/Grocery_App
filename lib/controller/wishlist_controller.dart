import 'package:d_ecom/model/item.dart';
import 'package:get/get.dart';

class WishlistController extends GetxController {
  var wishlistItems = List<Item>().obs;
  int get itemCount => wishlistItems.length;

  void addItem(Item item) {
    wishlistItems.add(item);
  }

  void remove(Item item) {
    wishlistItems.remove(item);
  }
}