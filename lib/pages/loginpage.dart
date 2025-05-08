import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget{
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('lib/images/tech_store_logo.png', height: 240),
              ),

              const Text(
                'Hardware Sales and Repairs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),

              const SizedBox(height: 8,),

              const Text(
                'The worlds fastest pc building professionals at your service 24/7',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),

              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginpage()
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                        'shop now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                  ),
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}