import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widget/wishlist_cart.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text (
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ) ,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyFavorite() {
      return Expanded(
        child: Container (  
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You dont have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'lets find your favorite shoes',
                style: subTitleTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(  
                height: 44,
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container (
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            children: [
              WishlistCart(),
              WishlistCart(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyFavorite(),
        content(),
      ],
    );
  }
}