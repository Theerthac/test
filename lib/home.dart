import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Student ID Card")),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 450,
            width: double.infinity,
            margin:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image
                CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://media.tenor.com/PwwADLHI1TMAAAAM/dora-dora-the-explorer.gif")
                    // AssetImage('assets/Screenshot 2024-12-08 221252.png'),
                    ),
                SizedBox(height: 20),
                // Name
                Text(
                  "Name: Dora",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Number:987654",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),
                // Class
                Text(
                  "Class: 8A",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),
                // School Name
                Text(
                  "School:  High School",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),
                // Parent Name
                Text(
                  "Parent: Mr. Doe",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
);
}
}
