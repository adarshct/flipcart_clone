import 'package:base_study/constructor.dart';
import 'package:base_study/widgets/fav_icon_buttons.dart';
import 'package:flutter/material.dart';
import '../dummy.dart';

class FavouritesScreen extends StatelessWidget {
  List<Model> favouriteList;

  FavouritesScreen({required this.favouriteList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: favouriteList.isEmpty
          ? Center(
              child: Text('You have no favorites yet - start adding some !'),
            )
          : Container(
              padding: EdgeInsets.only(top: 15),
              child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return SizedBox(
                    height: 100,
                    child: favouriteList.isNotEmpty
                        ? ListTile(
                            leading: Container(
                              width: 60,
                              child: Image.network(
                                favouriteList[index].imageUrl,
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: Text(
                              favouriteList[index].itemName,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            subtitle: Text(
                              '\n₹${favouriteList[index].price}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          )
                        : SizedBox(),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                  );
                },
                itemCount: favouriteList.length,
              ),
            ),
    );
  }
}
