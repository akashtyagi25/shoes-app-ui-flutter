import 'package:flutter/material.dart';
import 'package:project8/cart.dart';
import 'package:project8/shoe.dart';
import 'package:provider/provider.dart';

class cartItem extends StatefulWidget {
  Shoe shoe;
   cartItem({super.key,required this.shoe});

  @override
  State<cartItem> createState() => _cartItemState();
}

class _cartItemState extends State<cartItem> {
void removeitemFromCart(){
  Provider.of<Cart>(context,listen: false).removeitemFromCart(widget.shoe);

  
}



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.only(bottom: 10),
      
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete), onPressed: removeitemFromCart,),
      ),
    );
  }
}