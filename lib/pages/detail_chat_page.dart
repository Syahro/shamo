import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: Container(
          margin: EdgeInsets.only(top: 7),
          child: AppBar(
            backgroundColor: backgroundColor1,
            centerTitle: false,
            title: Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo_online.png',
                  width: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(fontSize: 14),
                    ),
                    Text(
                      'Online',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    return Scaffold(
      extendBody: true,
      backgroundColor: backgroundColor3,
      appBar: header(),
    );
  }
}
