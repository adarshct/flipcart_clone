import 'package:base_study/constructor.dart';
import 'package:base_study/dummy.dart';
import 'package:base_study/widgets/fav_icon_buttons.dart';
import 'package:base_study/screens/favourites_screen.dart';
import 'package:base_study/flip_drawer.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import './screens/favourites_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Flipcart(),
    );
  }
}

class Flipcart extends StatefulWidget {
  @override
  State<Flipcart> createState() => _FlipcartState();
}

class _FlipcartState extends State<Flipcart> {
  List<Model> favouriteList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Image.network(
          'https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/flipkart-plus_8d85f4.png',
          height: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return FavouritesScreen(favouriteList: favouriteList);
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      drawer: FlipDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: ListView.separated(
          itemBuilder: (ctx, index) {
            return SizedBox(
              height: 100,
              child: ListTile(
                onTap: () {},
                leading: Container(
                  width: 60,
                  child: Image.network(
                    dummy_items[index].imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text(
                  dummy_items[index].itemName,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  '\n₹${dummy_items[index].price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                // trailing: IconButton(
                //   color: (isFavourite == true) ? Colors.red : null,
                //   onPressed: () {
                //     setState(() {
                //       isFavourite = !isFavourite;
                //     });
                //   },
                //   icon: Icon(
                //     Icons.favorite,
                //   ),
                // ),
                trailing: FavoriteButton(
                  isFavorite: false,
                  iconSize: 35,
                  valueChanged: (isFavourite) {
                    if (isFavourite == true) {
                      favouriteList.add(
                        Model(
                          dummy_items[index].id,
                          dummy_items[index].imageUrl,
                          dummy_items[index].itemName,
                          dummy_items[index].price,
                        ),
                      );
                    } else {
                      print(isFavourite);
                      favouriteList
                          .removeWhere((element) => element.id == index);
                    }
                    print(favouriteList);

                    //return favouriteList;
                  },
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
