import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project8/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
   void Function()? onTap;
   ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(shoe.imagepath)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(shoe.description,style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      const SizedBox(height: 5,),
                      Text(
                        '\$' + shoe.price,style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                 GestureDetector(
                  onTap: onTap,
                   child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                      )
                    ),
                    child:  const Icon(Icons.add,color: Colors.white,),
                   ),
                 )
              
                ],
              ),
            )
        ],
      ),
    );
  }
}