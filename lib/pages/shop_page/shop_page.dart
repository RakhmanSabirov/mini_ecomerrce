import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:somewidgets/models/shoe_model.dart';

import '../../components/shoe_tile.dart';
import '../../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added"),
      content: Text('Check your cart'),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child) =>
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Search",style: TextStyle(color: Colors.grey),),
                  Icon(Icons.search,color: Colors.grey,)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(25),
              child: Text('There is some Products....,just UI',style:
              TextStyle(
                  color: Colors.grey[600]
              ),),),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Hot Pics!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                  Text("See all",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                );
              },),)
          ],
        ),
    );
  }
}
