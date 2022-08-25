import 'package:flutter/material.dart';

class BookSeat extends StatefulWidget {
  const BookSeat({Key? key}) : super(key: key);

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Column(

          ),
        ),
    );
  }
}
