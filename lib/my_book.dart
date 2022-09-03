import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_books/home_page/book_details.dart';
import 'package:online_books/model.dart';
import 'package:online_books/home_page/star_icon.dart';

class MyBook extends StatelessWidget {
  const MyBook({Key? key, required this.book}) : super(key: key);

  final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>   BookDetails(book: book,)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                book.Imagelink,
                height: 140,
                width: 130,
              ),
            ),
            const SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.bookName,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black,
                      decoration: TextDecoration.none
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  book.AuthorName,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.systemGrey,
                      decoration: TextDecoration.none
                  ),
                ),
                const SizedBox(height: 15,),
                Text(
                  book.Price,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black,
                      decoration: TextDecoration.none
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Stars(),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}



