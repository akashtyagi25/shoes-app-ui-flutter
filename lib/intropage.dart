import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project8/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('assets/images/nike.png',width:250,height: 250,),
              ),
              const SizedBox(height: 48,),
          
            const  Text(
              'Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
                ),
                ),
          
              const SizedBox(height: 24,),
          
                const  Text(
              'Brand new Sneakers and custom kicks made with premium quality',
              style: TextStyle(
              
                fontSize: 15,
                color: Colors.grey
                ),
                textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48,),

                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[900]),
                    child:const 
                    Center(
                      child:  Text('Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),
                        )
                        ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}