import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_books/model.dart';
import 'package:online_books/my_book.dart';

class BookList extends StatelessWidget {
  BookList({Key? key}) : super(key: key);

  final ScrollController  scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return ListView(
        controller: scrollController,
        children: Book.books.map((e) => MyBook(book: e,)).toList(),
      );
    }
    );
  }
}
