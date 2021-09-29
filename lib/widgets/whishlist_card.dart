import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WhishlistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(
              'assets/image_shoes.png',
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
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$143,98',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/btn_whislist_blue.png',
            width: 34,
          ),
        ],
      ),
    );
  }
}
