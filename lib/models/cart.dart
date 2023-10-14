import 'package:flutter/foundation.dart';
import 'package:somewidgets/models/shoe_model.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(name: "Air Jordan", price: "1000", imagePath: "assets/images/AirJordan.webp", description: "shoe for GS!"),
    Shoe(name: "Shoe1", price: '2345', imagePath: 'assets/images/dadad.png', description: "shoe 1 here"),
    Shoe(name: "Shoe2", price: '2125', imagePath: 'assets/images/shoe4.png', description: "shoe 2 here"),
    Shoe(name: "Shoe3", price: '1345', imagePath: 'assets/images/car.png', description: "shoe 3 here"),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}