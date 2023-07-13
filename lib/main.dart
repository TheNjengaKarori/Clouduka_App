import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

void main() {
  runApp(const SignupPage());
}

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SignupView(),
      ),
    );
  }
}

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _navigateToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  void _navigateToLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 115),
            width: 220,
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create your',
                  style: TextStyle(
                    color: Color(0xFF06AFCA),
                    fontSize: 42,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'account.',
                  style: TextStyle(
                    color: Color(0xFF06AFCA),
                    fontSize: 42,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 50),

        Container(
          width: 335,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Color(0xFF04ADC8),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.email,
                  color: Color(0xFF04ADC8),
                ),
              ),
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 25),

        Container(
          width: 335,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Color(0xFF04ADC8),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.lock,
                  color: Color(0xFF04ADC8),
                ),
              ),
              Expanded(
                child: TextFormField(
                  obscureText: !_isPasswordVisible,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              IconButton(
                onPressed: _togglePasswordVisibility,
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xFF04ADC8),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 100),

        // Sign Up button
        Container(
          width: 335,
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xFF04ADC8),
            borderRadius: BorderRadius.circular(40),
          ),
          child: ElevatedButton(
            onPressed: _navigateToHomePage, // Navigate to HomePage
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF04ADC8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Text.rich(
              TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  color: Color(0xFF04ADC8),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
                children: [
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Color(0xFF04ADC8),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = _navigateToLoginPage, // Navigate to LoginPage
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


















