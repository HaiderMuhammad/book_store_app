import 'dart:ffi';

import 'package:get/get.dart';

class Book{
  final RxBool isDone = false.obs;
  final String bookName;
  final String AuthorName;
  final String Price;
  final String Imagelink;
  final String Description;
  
  Book({
    required this.bookName, required this.AuthorName, required this.Price,
    required this.Imagelink, required this.Description,
});

  makeAsDone(){
    isDone.value = true;
  }

  static RxList<Book> books = <Book>[
    Book(bookName: 'Game of Thrones', AuthorName: 'George R.R Martin', Price: '\$ 20.99',
        Imagelink: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
        Description: 'It is a long established fact that a reader will be'
            ' distracted by the readable content of a page when looking'
            ' at its layout. The point of using Lorem Ipsum is that '
            'It is a long established fact that a reader will be'
            ' distracted by the readable content of a page when looking'
            ' at its layout. The point of using Lorem Ipsum is that'),
    Book(bookName: 'The Hobbit', AuthorName: 'George R.R Martin', Price: '\$ 19.32',
        Imagelink: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
        Description: 'It is a long established fact that a reader will be'
            ' distracted by the readable content of a page when looking'
            ' at its layout. The point of using Lorem Ipsum is that',
    ),
    Book(bookName: 'The Hobbit', AuthorName: 'George R.R Martin', Price: '\$ 39.40',
      Imagelink: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
      Description: 'It is a long established fact that a reader will be'
          ' distracted by the readable content of a page when looking'
          ' at its layout. The point of using Lorem Ipsum is that',
    ),
    Book(bookName: 'The Hobbit', AuthorName: 'George R.R Martin', Price: '\$ 46.99',
      Imagelink: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
      Description: 'It is a long established fact that a reader will be'
          ' distracted by the readable content of a page when looking'
          ' at its layout. The point of using Lorem Ipsum is that',
    ),
  ].obs;

  static add(String name, String author, String price, String image, String description){
    books.add(Book(bookName: name, AuthorName: author,
        Price: price, Imagelink: image, Description: description));
  }


}