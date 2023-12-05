
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProductPage/product_page.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State<Payment> createState() => PaymentState();
}
class PaymentState extends State<Payment>{
  int _type=1;
  String dropdown="2";
  void _handleRadio(Object? e) => setState((){
     _type = e as int;

  });

  @override
  void initState(){
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Scaffold(

      
    );
  }
}