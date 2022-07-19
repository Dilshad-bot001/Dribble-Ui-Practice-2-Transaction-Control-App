import 'package:flutter/material.dart';

class RecentDetails extends StatelessWidget {
  final String percentage;
  final String costTitle;
  final String costDate;
  final String costAmount;
  final String costType;
  final IconData icon;
  final Color color;

  const RecentDetails(
      {Key? key,
      required this.percentage,
      required this.costTitle,
      required this.costDate,
      required this.costAmount,
      required this.costType,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //percentage section
              Container(
                padding: const EdgeInsets.all(18.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                child: Text(
                  percentage,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),

              //cost title and cost date section
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    costTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    costDate,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black54),
                  )
                ],
              )
            ],
          ),

          //price section
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                costAmount,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                children: [
                  Text(
                    costType,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    icon,
                    color: Colors.black54,
                    size: 20.0,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
