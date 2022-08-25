import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trains extends StatelessWidget {
  const Trains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 330,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Color(0xFF526799),
        borderRadius: BorderRadius.circular(12),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade200,

          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/istockphoto-620728240-612x612.jpg'),

              ),
            ),
          ),
          SizedBox(height:10),
          Text('Kano Monotrail',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ticket',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('₦5000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              
            ],
          ),
          Text('Your Journey awaits You',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Lato',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300
            ),
          ),
          
        ],
      ),
    );
  }
}
