import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/models/product_model.dart';
import 'package:shamo/providers/wishlist_provider.dart';
import 'package:shamo/theme.dart';

class WhishlistCard extends StatelessWidget {
  final ProductModel product;
  WhishlistCard(this.product);
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.fromLTRB(12, 10, 20, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product.galleries[0].url,
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/btn_whislist_blue.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
