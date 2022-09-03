import 'package:flutter/material.dart';
import 'package:online_books/addBook_page/Text_field.dart';
import 'package:online_books/home_page/book_list.dart';
import '../addBook_page/add_book.dart';
import '../purchased_page/purchases.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    this.scrollController,
  }) : super(key: key);

  final ScrollController? scrollController;
  final TextEditingController searchController = TextEditingController();
  final bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/person.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Hi, Haider',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert_rounded,
                        size: 25,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                    child: FieldContainer(controller: searchController, hint: 'Search', height: 55),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Book List',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),

                  // ========= BOOK LIST ===========

                  Expanded(
                    child: BookList(
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
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

                            },
                            icon: const Icon(Icons.home_sharp, size: 25, color: Colors.black,),
                          ),
                          IconButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PurchasePage()),
                                );
                              },
                              icon: (click == false) ? const Icon(Icons.shopping_cart_rounded, size: 25, color: Colors.grey,)
                                  :
                              const Icon(Icons.shopping_cart_rounded, size: 25, color: Colors.black,)
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
            ],
          ),
        ),
      ),
    );
  }
}
