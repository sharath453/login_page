import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context)
                    .size
                    .width, // Make container take full width of screen
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/alvas_college.png', // Replace with your actual image path
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Welcome to Leave App',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black87, // Increased font darkness
                        fontFamily: 'Roboto', // Changed font style
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    HomeButton(
                      label: 'Events',
                      onPressed: () {
                        // Implement onPressed logic for Events button
                      },
                      color: const Color(0xFFB3E5FC), // Light blue color
                    ),
                    SizedBox(height: 20), // Add spacing between buttons
                    HomeButton(
                      label: 'Attendance Details',
                      onPressed: () {
                        // Implement onPressed logic for Attendance Details button
                      },
                      color: const Color(0xFFC8E6C9), // Light green color
                    ),
                    SizedBox(height: 20), // Add spacing between buttons
                    HomeButton(
                      label: 'Gallery',
                      onPressed: () {
                        // Implement onPressed logic for Gallery button
                      },
                      color: const Color(0xFFFFF9C4), // Light yellow color
                    ),
                    SizedBox(height: 20), // Add spacing between buttons
                    HomeButton(
                      label: 'Apply for Leave',
                      onPressed: () {
                        // Implement onPressed logic for Apply for Leave button
                      },
                      color: const Color(0xFFFFCCBC), // Light orange color
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color; // Button color

  const HomeButton({
    required this.label,
    required this.onPressed,
    required this.color, // Color parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Make button width match parent
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Set button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Set border radius
          ),
          padding: EdgeInsets.symmetric(
              vertical: 20.0), // Increase padding for height
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20, // Increase button text size
            color: Colors.black87, // Increased font darkness
            fontFamily: 'Roboto', // Changed font style
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
