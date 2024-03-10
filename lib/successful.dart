
import 'package:assignment_4/page2.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 120,
            left: MediaQuery.of(context).size.width / 2 - 90,
            child: const Column(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 60,
                  color: Colors.green,
                ),
                SizedBox(height: 10),
                Text(
                  'Successful!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 2 - 125,
            child: const Text(
              'You have successfully registered in',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 25,
            left: MediaQuery.of(context).size.width / 2 - 105,
            child: const Text(
              "our app and start working in it",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: MediaQuery.of(context).size.width / 2 - 170,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MainPage()), // Navigate to the second page
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black), // Border color
                ),
                child: const Center(
                  child: Text(
                    'start Shopping',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white, // Text color
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
