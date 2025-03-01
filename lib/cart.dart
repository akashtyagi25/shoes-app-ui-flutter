import 'package:flutter/material.dart';
import 'package:project8/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop=[
Shoe(
  name: 'ZOOM FREAK',
   price: '500', 
   imagepath: 'assets/images/sneaker1.png',
    description: 'the forward thinking design of his latest signature shoe'
    ),
      Shoe(
        name: 'AIR JORDANS',
         price: '550', 
         imagepath: 'assets/images/sneaker2.png',
          description: 'you\'ve got the hops and the speed lace up in shoe that enhances'
          ),
          Shoe(
        name: 'AIR JORDANS',
         price: '550', 
         imagepath: 'assets/images/sneaker3.png',
          description: 'you\'ve got the hops and the speed lace up in shoe that enhances'
          ),
          Shoe(
        name: 'AIR JORDANS',
         price: '550', 
         imagepath: 'assets/images/sneaker4.png',
          description: 'you\'ve got the hops and the speed lace up in shoe that enhances'
          ),


  ];

  List<Shoe> userCart=[];

  List<Shoe> getshoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeitemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}