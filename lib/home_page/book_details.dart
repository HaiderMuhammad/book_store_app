import 'package:flutter/material.dart';
import 'package:online_books/home_page/star_icon.dart';

import '../model.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, required this.book}) : super(key: key);
  final Book book;

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                  book.Imagelink,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
                book.bookName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              book.AuthorName,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Stars(),

                SizedBox(width: 15,),
                Text(
                  '4.5 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
                Text(
                  '/ 5.0',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Center(
                child: Text(
                book.Description,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  height: 45,
                  margin: const EdgeInsets.only(top: 5),
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
                    children: const [
                      Icon(Icons.short_text_rounded, color: Colors.black, size: 30,),
                      Text(
                        'Preview',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 170,
                  height: 45,
                  margin: const EdgeInsets.only(top: 5),
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
                    children: const [
                      Icon(Icons.textsms_outlined, color: Colors.black, size: 25,),
                      Text(
                        'Reviews',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, bottom: 50),
                child: MaterialButton(
                  onPressed: (){
                    book.makeAsDone();
                    Navigator.pop(context);
                  },
                  height: 65,
                  minWidth: double.infinity,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Text('Buy Now for \$${book.Price}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      )
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
