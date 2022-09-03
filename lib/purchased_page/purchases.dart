import 'package:flutter/material.dart';
import 'package:online_books/home_page/home.dart';
import 'package:online_books/purchased_page/your_books.dart';

import '../addBook_page/add_book.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);
  final bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 25,)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.more_vert_rounded, color: Colors.black, size: 25),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 25.0),
              child: Text(
                'Cart',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Expanded(
              child: YourBooks(
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(196,135,198,.1),
                        blurRadius: 10,
                        offset: Offset(0,.1),
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      icon: const Icon(Icons.home_sharp, size: 25, color: Colors.grey,),
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PurchasePage()),
                          );
                        },
                        icon: (click == false) ? const Icon(Icons.shopping_cart_rounded, size: 25, color: Colors.black,)
                            :
                        const Icon(Icons.shopping_cart_rounded, size: 25, color: Colors.grey,)
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  MyInputField()),
                          );
                        },
                        icon: (click == false) ? const Icon(Icons.add, size: 25, color: Colors.grey,)
                            :
                        const Icon(Icons.add, size: 25, color: Colors.black,)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
