
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProductPage/product_page.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State<Payment> createState() => PaymentState();
}
class PaymentState extends State<Payment>{
  int _type=1;
  String dropdown="1";
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
    backgroundColor: Colors.white,
     appBar: AppBar(
      title: Text("Choose Payment Method"),
      leading: BackButtonIcon(),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,

     ),
     body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                width: size.width,
                height:55,
                margin:EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  border: _type ==1 
                  ? Border.all(width:1,color: Colors.red) 
                  : Border. all(width: 0.3,color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                               value: 1,
                               groupValue: _type ,
                               onChanged: _handleRadio,
                              activeColor: Colors.red,
                            ),
                            Text(
                              "Bkash",
                            style:  _type == 1 
                            ? TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.black
                            ):TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                              "images/bkash.png",
                              width: 50,
                              fit: BoxFit.cover,
                          ),
                      ],
                      
                    ),
                  ),

                ),
              ),
                SizedBox(height: 15),
              Container(
                width: size.width,
                height:55,
                margin:EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  border: _type ==2 
                  ? Border.all(width:1,color: Colors.red) 
                  : Border. all(width: 0.3,color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                               value: 2,
                               groupValue: _type ,
                               onChanged: _handleRadio,
                              activeColor: Colors.red,
                            ),
                            Text(
                              "Nagad",
                            style:  _type == 2 
                            ? TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.black
                            ):TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                              "images/nagad.png",
                              width: 50,
                              fit: BoxFit.cover,
                          ),
                      ],
                      
                    ),
                  ),

                ),
              ),

              

              SizedBox(height: 15),
              Container(
                width: size.width,
                height:55,
                margin:EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  border: _type == 3 
                  ? Border.all(width:1,color: Colors.red) 
                  : Border. all(width: 0.3,color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                  
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                               value: 3,
                               groupValue: _type ,
                               onChanged: _handleRadio,
                              activeColor: Colors.red,
                            ),
                            Text(
                              "Credit Card",
                            style:  _type == 3
                            ? TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.black
                            ):TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                              "images/visa.png",
                              width:25,
                              
                              fit: BoxFit.cover,
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                              "images/mastercard.png",
                              width:25,
                              
                              fit: BoxFit.cover,
                          ),
                      ],
                      
                    ),
                  ),

                ),
              ),
                    SizedBox(height: 15),
              Container(
                width: size.width,
                height:55,
                margin:EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  border: _type ==4 
                  ? Border.all(width:1,color: Colors.red) 
                  : Border. all(width: 0.3,color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                               value: 4,
                               groupValue: _type ,
                               onChanged: _handleRadio,
                              activeColor: Colors.red,
                            ),
                            Text(
                              "Paypal",
                            style:  _type == 4 
                            ? TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.black
                            ):TextStyle(
                              fontSize: 15,
                              fontWeight:  FontWeight.w500,
                              color: Colors.grey),
                            ),
                          ],
                        ),
                        Image.asset(
                              "images/paypal.png",
                              width: 65,
                              fit: BoxFit.cover,
                          ),
                      ],
                      
                    ),
                  ),

                ),
              ),
              SizedBox(height: 50),
              Row(

              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Center(
                  child: DropdownButton<String>(
                    value: dropdown,
                    icon: const Icon(Icons.menu),
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 3,
                      color: Colors.red,
                    ),
                    onChanged: (String? newvalue){
                      setState(() {
                        dropdown=newvalue!;

                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: '1',
                        child: Text('1'),
                      ),
                      DropdownMenuItem<String>(
                        value: '2',
                        child: Text('2'),
                      ),
                       DropdownMenuItem<String>(
                        value: '3',
                        child: Text('3'),
                      ),


                    ],

                  )
                ),
                
              ],

             ),
              
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "\৳31000",
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.redAccent
                  ),
                ),
              ],
             ),
             
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopPage()),
                  );
                  
                },
                child: Text(
                  "Make Payment"
                  ),
              ),

              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopPage()),
                  );
                  
                },
                child: Text(
                  "Go Back"
                  ),
              ),

            
        
            ],
            

          ),
        ),
      ),
     ),

      
    );
  }
}