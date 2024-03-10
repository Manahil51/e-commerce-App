import 'package:assignment_4/signup.dart';
import 'package:flutter/material.dart';
import 'login.dart';
// Import the second page file

class HomeOne extends StatelessWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page1.png.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login Button
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - -270,
            left: MediaQuery.of(context).size.width / 2 - 170,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to the second page
                );
              },
              child: Container(
                height: 53,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Signup Button
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 336,
            left: MediaQuery.of(context).size.width / 2 - 170,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()), // Navigate to the second page
                );
              },
              child: Container(
                height: 53,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
