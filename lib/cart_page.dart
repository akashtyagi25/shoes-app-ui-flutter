import 'package:flutter/material.dart';
import 'package:project8/cart.dart';
import 'package:project8/cart_item.dart';

import 'package:provider/provider.dart';

import 'shoe.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void paynow(){

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      
      builder:(context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),

          const SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context,index) {
       Shoe individualshoe = value.getUserCart()[index]; 

       return cartItem(shoe: individualshoe,);

          }
          )
          ),
           GestureDetector(
              onTap: paynow,
              child: Container(
                padding: const  EdgeInsets.all(25),
                width: double.infinity,
                child: const Center(
                  child: Text('Pay Now',
                  style: TextStyle(
                    color: Colors.white
                    ),
                    )
                    ),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            )
        ],
      ),
    ),
    );
  }
}