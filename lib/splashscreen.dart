import 'package:flutter/material.dart';
import 'package:railmeeapp/signup.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                'assets/Rectangle 1 (1).png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset('assets/Train.png'),
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Rail Me App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 48,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              'Your Essential Train Booking App',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 80),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      fontSize: 24,
                    ),
                  ),
                ),
                width: 259,
                height: 61,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
