import 'package:flutter/material.dart';
import 'package:flutter_app1/Cart/widget/ProductCard.dart';
import 'package:flutter_app1/SearchPage/SearchPage.dart';
import 'package:flutter_app1/model/Product.dart';

class CartPage extends StatelessWidget {

  List<Product> products=new List();
  CartPage(){
    products.add(Product('BreakFast',5,'assets/images/food.jpg','\$ 30'));
    products.add(Product('Lunch',5,'assets/images/lunch.jpg','\$ 30'));
    products.add(Product('BreakFast',5,'assets/images/food.jpg','\$ 30'));
    products.add(Product('BreakFast',5,'assets/images/food.jpg','\$ 30'));
  }

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: products.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context,position){
          return ProductCard(products[position]);
        });
  }

}
