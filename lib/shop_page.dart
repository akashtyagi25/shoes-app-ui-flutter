import 'package:flutter/material.dart';
import 'package:project8/cart.dart';
import 'package:project8/shoe.dart';
import 'package:project8/shoe_tile.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
void addshoeToCart(Shoe shoe){
  Provider.of <Cart>(context,listen: false).addItemtoCart(shoe);

  showDialog(
    context:context, 
     builder: (context) => AlertDialog(
    title: Text('Successfully added!'),
    content: Text('check your cart'),
     actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
  ),
     ],
  ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[200]
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search',style: TextStyle(color: Colors.grey),),
              Icon(Icons.search,color: Colors.grey,)
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text('everyone flies. some fly longer than others',style: TextStyle(color: Colors.grey[600]),),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: const[
                
                Text('Hot Picks 🔥',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Text('See All',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
              ],
            ),
         

          ),
             const SizedBox(height: 10,),

             Expanded(
              
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index) {
              Shoe shoe =value.getshoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addshoeToCart(shoe),
              ); 
             }
             ),
             ),
            const  Padding(
               padding:  EdgeInsets.only(top: 25.0,right: 25,left: 25),
               child: Divider(color: Colors.white,),
             )
      ],
    )
    );
  }
}