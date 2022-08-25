import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:railmeeapp/screens/seats.dart';

import '../widgets/thickcontainer.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor:Color(0xFF526799),
            title: Text('Tickets',
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Colors.white,
            ),
            ),
          ),
          backgroundColor: Color(0xFFeeedf2),
          body: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                Slidable(
                  startActionPane:ActionPane(motion: ScrollMotion(),
                      children:[SlidableAction
                      (onPressed: (_) {}, icon:Icons.menu),
                  ],
                  ),
                  endActionPane: ActionPane(motion:ScrollMotion(),
                  children: [SlidableAction
                      (onPressed:(_) {}, icon:Icons.delete,
                  )]
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF526799),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                            topRight: Radius.circular(21),
                          ),
                        ),
                        margin: EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Kano',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(child: Container()),
                                ThickContainer(),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 24,
                                        child: LayoutBuilder(
                                          builder: (BuildContext context,
                                              BoxConstraints constraints) {
                                            print(
                                                'The width is ${constraints.constrainWidth()}');
                                            return Flex(
                                              direction: Axis.horizontal,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  (constraints.constrainWidth() / 6)
                                                      .floor(),
                                                      (index) => SizedBox(
                                                    width: 3,
                                                    height: 1,
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )),
                                            );
                                          },
                                        ),
                                      ),
                                      Center(
                                          child: Icon(Icons.train, color: Colors.white)),
                                    ],
                                  ),
                                ),
                                ThickContainer(),
                                Expanded(child: Container()),
                                 Text(
                                   '₦15000',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w600,
                                     fontSize: 16,
                                     color: Colors.white,
                                   ),
                                 ),
                              ],
                            ),
                            SizedBox(height:3),
                            Icon(Icons.arrow_downward,color: Colors.white),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Abuja',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  '10H 30M',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xFFF37B66),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 19,
                              height: 9,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(9),
                                    bottomRight:Radius.circular(9),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(11),
                              child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/14).floor(), (index) => SizedBox(
                                      width: 4,
                                      height: 0,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ))
                                );
                              },
                              ),
                            )),
                            SizedBox(
                              width: 19,
                              height: 9,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    bottomLeft:Radius.circular(9),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF37B66),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        margin: EdgeInsets.only(left: 1),
                        padding: EdgeInsets.only(left: 15,top:10,right: 16,bottom: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '19 August',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '9:00AM',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Departure time',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Text(
                                        'Book Seat',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Seats()));
                                      },
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                  SizedBox(height: 20),
                  Slidable(
                    startActionPane:ActionPane(motion: ScrollMotion(),
                      children:[SlidableAction
                        (onPressed: (_) {}, icon:Icons.menu),
                      ],
                    ),
                    endActionPane: ActionPane(motion:ScrollMotion(),
                        children: [SlidableAction
                          (onPressed:(_) {}, icon:Icons.delete,
                        )]
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF526799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21),
                              topRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Ogun',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  ThickContainer(),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              print(
                                                  'The width is ${constraints.constrainWidth()}');
                                              return Flex(
                                                direction: Axis.horizontal,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    (constraints.constrainWidth() / 6)
                                                        .floor(),
                                                        (index) => SizedBox(
                                                      width: 3,
                                                      height: 1,
                                                      child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )),
                                              );
                                            },
                                          ),
                                        ),
                                        Center(
                                            child: Icon(Icons.train, color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  ThickContainer(),
                                  Expanded(child: Container()),
                                  Text(
                                    '₦10000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:3),
                              Icon(Icons.arrow_downward,color: Colors.white),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      'Kano',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '27H 54M',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xFFF37B67),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                  );
                                },
                                ),
                              )),
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF37B67),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.only(left: 16,top:10,right: 16,bottom: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '20 August',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '08:00AM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Departure time',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        child: Text(
                                          'Book Seat',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Seats()));
                                        },
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  /* This shows the orange part of the ticket

               */

                  SizedBox(height: 20),
                  Slidable(
                    startActionPane:ActionPane(motion: ScrollMotion(),
                      children:[SlidableAction
                        (onPressed: (_) {}, icon:Icons.menu),
                      ],
                    ),
                    endActionPane: ActionPane(motion:ScrollMotion(),
                        children: [SlidableAction
                          (onPressed:(_) {}, icon:Icons.delete,
                        )]
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF526799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21),
                              topRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lagos',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  ThickContainer(),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              print(
                                                  'The width is ${constraints.constrainWidth()}');
                                              return Flex(
                                                direction: Axis.horizontal,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    (constraints.constrainWidth() / 6)
                                                        .floor(),
                                                        (index) => SizedBox(
                                                      width: 3,
                                                      height: 1,
                                                      child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )),
                                              );
                                            },
                                          ),
                                        ),
                                        Center(
                                            child: Icon(Icons.train, color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  ThickContainer(),
                                  Expanded(child: Container()),
                                  Text(
                                    '₦6000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:3),
                              Icon(Icons.arrow_downward,color: Colors.white),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      'Ibadan',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2H 48M',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xFFF37B67),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                  );
                                },
                                ),
                              )),
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF37B67),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.only(left: 16,top:10,right: 16,bottom: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '20 August',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '12:00PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Departure time',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        child: Text(
                                          'Book Seat',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Seats()));
                                        },
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                  /* This shows the orange part of the ticket

               */

                  SizedBox(height: 20),
                  Slidable(
                    startActionPane:ActionPane(motion: ScrollMotion(),
                      children:[SlidableAction
                        (onPressed: (_) {}, icon:Icons.menu),
                      ],
                    ),
                    endActionPane: ActionPane(motion:ScrollMotion(),
                        children: [SlidableAction
                          (onPressed:(_) {}, icon:Icons.delete,
                        )]
                    ),

                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF526799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21),
                              topRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Kaduna',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  ThickContainer(),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              print(
                                                  'The width is ${constraints.constrainWidth()}');
                                              return Flex(
                                                direction: Axis.horizontal,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    (constraints.constrainWidth() / 6)
                                                        .floor(),
                                                        (index) => SizedBox(
                                                      width: 3,
                                                      height: 1,
                                                      child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )),
                                              );
                                            },
                                          ),
                                        ),
                                        Center(
                                            child: Icon(Icons.train, color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  ThickContainer(),
                                  Expanded(child: Container()),
                                  Text(
                                    '₦8000',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:3),
                              Icon(Icons.arrow_downward,color: Colors.white),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      'Kano',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '5H 54M',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      '',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xFFF37B67),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                  );
                                },
                                ),
                              )),
                              SizedBox(
                                width: 20,
                                height: 10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft:Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF37B67),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 2),
                          padding: EdgeInsets.only(left: 16,top:10,right: 16,bottom: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '20 August',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '2:00PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Departure time',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        child: Text(
                                          'Book Seat',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Seats()));
                                        },
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /* This shows the orange part of the ticket

               */

                ],
              ),
            ),
          ),
        ),
    );
  }
}

