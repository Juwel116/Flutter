import 'package:flutter/material.dart';
import 'package:flutter_app1/model/Product.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Image.asset(product.imagepath),
         ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(product.name),
            subtitle: Text(product.quantity.toString()),
            trailing: Text(product.price.toString()),
          ),


        ],
      ),

    );
  }
}
