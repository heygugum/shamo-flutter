import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_shoes.png',
                ),
              ),
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
                  'Terrex Urban Low Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$143.98',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Text(
                '2 Items',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}