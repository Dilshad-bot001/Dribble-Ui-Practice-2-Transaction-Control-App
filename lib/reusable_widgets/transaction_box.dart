import 'package:flutter/material.dart';

class TransactionBox extends StatelessWidget {
  final Color bgColor;
  final Color iconBgColor;
  final IconData icon;
  final String name;
  final String amount;
  final String percentPerMonth;
  final double percentBar;
  final String location;
  const TransactionBox({ Key? key, required this.bgColor, required this.iconBgColor, required this.icon, required this.name, required this.amount, required this.percentPerMonth, required this.percentBar, required this.location }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(

              // main container decoration
              height: 220,
              width: 160,
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  //icon container section
                  Container(
                    padding: const EdgeInsets.all(12.0),                
                    decoration: BoxDecoration(                      
                        color: iconBgColor,
                        shape: BoxShape.circle,
                        
                        ),
                    child: Icon(
                      icon,
                    ),                     
                  ),


                  //name section
                  const SizedBox(height: 10.0,),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      color: Colors.black54,
                      wordSpacing: 1.3
                    ),
                  ),


                  //amount section
                  const SizedBox(height: 8.0,),
                  Text(
                    amount,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),


                  //percent bar
                  const SizedBox(height: 12.0,),
                  Stack(
                    children: [
                      Container(
                    height: 10.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white
                    ),
                  ),
                  Container(
                    height: 10.0,
                    width: percentBar,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.black
                    ),
                  )
                    ],
                  ),


                  //percentage per month section
                  const SizedBox(height: 12.0,),
                  Text(
                    percentPerMonth,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      color: Colors.black54,
                      wordSpacing: 1.3
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: 160.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,              
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black45,
                  ),
                  const SizedBox(width: 5.0,),
                  Text(
                    location,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        color: Colors.black45,
                        wordSpacing: 1.3,
                        overflow: TextOverflow.ellipsis
                      ),
                  )
                ],
              ),
            )
            ],
    );
  }
}