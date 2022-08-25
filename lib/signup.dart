import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:railmeeapp/login.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  bool _visible = false;
  bool _checked = false;
  TextEditingController _email =TextEditingController();
  TextEditingController _password =TextEditingController();
  TextEditingController _confirmpassword =TextEditingController();
  TextEditingController _name =TextEditingController();
  TextEditingController _phonenumber =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 19, right: 21),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) =>Signup()));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome User',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff484848),
                          fontFamily: 'Lato',
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Sign up to join',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff484848),
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(height: 10),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff484848),
                    fontFamily: 'Lato',
                  ),
                ),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Your full name',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7A7A7A),
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff484848),
                    fontFamily: 'Lato',
                  ),
                ),
                TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Youremail@gmail.com',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7A7A7A),
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff484848),
                    fontFamily: 'Lato',
                  ),
                ),
                TextFormField(
                  controller: _phonenumber,
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7A7A7A),
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff484848),
                    fontFamily: 'Lato',
                  ),
                ),
                TextFormField(
                  controller: _password,
                  obscureText: _visible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: '',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7A7A7A),
                        fontFamily: 'Lato',
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _visible = !_visible;
                          });
                        },
                        icon: _visible
                            ? Icon(
                          Icons.visibility,
                        )
                            : Icon(
                          Icons.visibility_off,
                        ),
                      )),
                ),
                SizedBox(height: 20),

                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff484848),
                    fontFamily: 'Lato',
                  ),
                ),
                TextFormField(
                  controller: _confirmpassword,
                  obscureText: _visible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: ' ',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7A7A7A),
                        fontFamily: 'Lato',
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _visible = !_visible;
                          });
                        },
                        icon: _visible
                            ? Icon(
                          Icons.visibility,
                        )
                            : Icon(
                          Icons.visibility_off,
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _email.text.trim(), password: _password.text).then((value) =>
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login())));
                    }
                    else{
                      print('Password does not match');
                    }


                  },

                  child: Container(
                    width: 374,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        shape: CircleBorder(),
                        value: _checked,
                        onChanged: (bool? value) {
                          setState(() {
                            _checked = !_checked;
                          });
                        },
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  'I agree to the ',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff484848),
                                  ),
                                ),
                                Text(
                                  'Terms of service ',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: Color(0xff484848),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
