import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:orderbus/generated/l10n.dart';
import 'package:orderbus/providers/store.dart';
import 'package:orderbus/widgets/product_list_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).favorite,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
          ...store.favorites.map((item) {
            return InkWell(
                onTap: () {
                  store.setActiveProduct(item);
                  Navigator.pushNamed(context, '/product');
                },
                child: ProductListItem(product: item));
          }),
        ],
      ),
    );
  }
}
