import 'package:ecommerce_app/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  "assets/images/logo/vansLogo.png",
                  height: 250,
                ),
              ),

              SizedBox(height: 96.0),

              // title
              Text(
                "Welcome to the Vans Family",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              ),

              SizedBox(height: 12.0),

              // subtitle
              Text(
                "Get your brand new Vans and get off the wall",
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 128.0),

              // start now buttom
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[900],
                  ),
                  padding: EdgeInsets.all(24.0),
                  child: Center(
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 36.0),
            ],
          ),
        ),
      ),
    );
  }
}
