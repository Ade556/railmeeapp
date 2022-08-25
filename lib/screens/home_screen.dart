import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:railmeeapp/screens/ticketview.dart';
import 'package:railmeeapp/screens/trains.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFeeedf2),
        title: Text('Welcome to Rail Me',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 24,
            fontFamily: 'Lato',
          ),
        ),
      ),
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),

                      ],

                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Train.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text('Search'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' Available Tickets',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print('You are Tapped');
                      },
                      child: Text('View All',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left:20),
                  child:Row(
                    children: [
                      TicketView(),
                      TicketView(),
                    ],
                  ),
                ),
                SizedBox(height:5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' Available Trains',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print('You are Tapped');
                      },
                      child: Text('View All',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ) ,
                SizedBox(height:15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left:20),
                    child: Row(
                      children: [
                       Trains (),
                       Trains (),
                      ],
                    ),

                )],
            ),
          ),
        ],
      ),
    );
  }
}
