import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:somewidgets/models/shoe_model.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({Key? key,required this.shoe}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8)
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
