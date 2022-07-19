import 'package:flutter/material.dart';

class SavedTransactions extends StatelessWidget {

  final String date;
  final IconData icon;
  final String type;

  const SavedTransactions({ Key? key, required this.date, required this.icon, required this.type }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 1.25,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(35.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(                   
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                          icon,
                          color: Colors.white,
                        )
                      ),
                      const SizedBox(width: 12.0,),
                      Text(
                        date,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black54
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18.0,),
                  Text(
                    type,
                    style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54
                        ),
                  )
                ],
              ),
            );
  }
}