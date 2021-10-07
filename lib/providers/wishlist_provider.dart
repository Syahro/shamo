import 'package:flutter/cupertino.dart';
import 'package:shamo/models/product_model.dart';

class WishlistProvider with ChangeNotifier {
  List<ProductModel> _whishlist = [];

  List<ProductModel> get whishlist => _whishlist;

  set whishlist(List<ProductModel> whishlist) {
    _whishlist = whishlist;
    notifyListeners();
  }

  setProduct(ProductModel product) {
    if (!isWhishlist(product)) {
      _whishlist.add(product);
    } else {
      _whishlist.removeWhere((element) => element.id == product.id);
    }
    notifyListeners();
  }

  isWhishlist(ProductModel product) {
    if (_whishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
