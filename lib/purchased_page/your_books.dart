import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../model.dart';
import '../my_book.dart';

class YourBooks extends StatelessWidget {
   YourBooks({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return ListView(
        controller: scrollController,
        children: Book.books.where((e) => e.isDone.value).map((e) => MyBook(book: e)).toList(),
      );
    }
    );
  }
}