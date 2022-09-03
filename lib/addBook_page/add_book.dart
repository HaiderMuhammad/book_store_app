import 'package:flutter/material.dart';
import 'package:online_books/addBook_page/Text_field.dart';
import 'package:online_books/model.dart';


class MyInputField extends StatelessWidget {
    MyInputField({
    Key? key,
  }) : super(key: key);
  final TextEditingController bookController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final ScrollController scrollController = ScrollController();


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
      body: ListView(
        controller: scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add Book',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      FieldContainer(controller: bookController, hint: 'Book Name'),
                      FieldContainer(controller: authorController, hint: 'Author Name'),
                      FieldContainer(controller: priceController, hint: 'Price'),
                      FieldContainer(controller: imageController, hint: 'Image link'),
                      FieldContainer(controller: descriptionController, hint: 'Description', lines: 6),
                    ],
                  ),
                ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: MaterialButton(
              onPressed: (){
                Book.add(
                    bookController.text, authorController.text, priceController.text,
                    imageController.text, descriptionController.text);

                bookController.clear();
                authorController.clear();
                priceController.clear();
                imageController.clear();
                descriptionController.clear();
                Navigator.pop(context);
              },
              height: 65,
              minWidth: double.infinity,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Text("Add",
                style: TextStyle(
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
        ],
      ),
    );
  }
}