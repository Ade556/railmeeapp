import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:railmeeapp/bookseat.dart';
import 'package:railmeeapp/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
        bool _visible = false;
        bool _checked = false;
        TextEditingController _email =TextEditingController();
        TextEditingController _password =TextEditingController();

        @override
        Widget build(BuildContext context) {
        return SafeArea(
        child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 22, right: 21),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome Back',
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
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
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
              SizedBox(height: 5, width: 374),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Youremail@gmail.com',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7A7A7A),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _password,
                obscureText: _visible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                 hintText : 'Password',
                  labelStyle: TextStyle(
                    fontSize: 12,
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
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 22),
                  Text(
                    'Forget Password? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff484848),
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 39),
              GestureDetector(
                onTap: () {
                   FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _email.text.trim(), password: _password.text).then((value) =>
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => BookSeat())));

                },
                child: Container(
                  width: 375,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Center(
                      child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  )),
                ),
              ),
              SizedBox(height: 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Text(
                    'or continue with ',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      color: Color(0xff484848),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 27),
              Container(
                width: 332,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons8-google-32.png'),
                    Text(
                      ' Sign in to Google',
                      style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' You don’t have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff484848),
                      fontFamily: 'Lato',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff484848),
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 110),
              Center(
                child: Image.asset('assets/Rectangle 2.png'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
