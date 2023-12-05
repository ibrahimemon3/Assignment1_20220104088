import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProductPage/payment.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Product Page"),
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              
              SizedBox(height: 16),
              Text(
                "Intel arc a750",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage("images/pic1.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "The Arc A750 is a performance-segment graphics card by Intel, launched on October 12th, 2022. Built on the 6 nm process, and based on the DG2-512 graphics processor, in its ACM-G10 variant, the card supports DirectX 12 Ultimate.",
              ),
              SizedBox(height: 16),
              Text(
                "Price: \৳31000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                  
                },
                child: Text(
                  "Buy now"
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
