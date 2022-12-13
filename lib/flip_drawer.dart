import 'package:flutter/material.dart';

class FlipDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.blue,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    label: Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Image.network(
                      'https://cavinkare.com/img/2021/12/Flipkart-Logo-removebg-preview.png'),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  '  SuperCoin Zone',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Flipcart Plus Zone'),
              ),
              Divider(color: Colors.black38),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  All Categories'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Trending Stores'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  More On Flipcart'),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Choose Language'),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Offer Zone'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Sell On Flipcart'),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  My Orders'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Coupons'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  My Cart'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Sell On Flipcart'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  My Wishlist'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  My Account'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  My Notifications'),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Notification Preferences'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Help Center'),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('  Legal'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
