import 'package:dribble_ui_practice_4_money_saving_app/Pages/recent_activity.dart';
import 'package:dribble_ui_practice_4_money_saving_app/reusable_widgets/transaction_box.dart';
import 'package:dribble_ui_practice_4_money_saving_app/reusable_widgets/widgets.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar section
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentActivity(),)),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Transactions",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        titleSpacing: 70.0,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 25.0),
            child: const Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),

      //body section
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //transaction details container section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TransactionBox(
                  bgColor: Colors.red.shade100,
                  iconBgColor: Colors.yellow.shade300,
                  icon: Icons.person_outline,
                  name: "Desairai Stanton",
                  amount: "+\$597",
                  percentPerMonth: "13% / month",
                  percentBar: 20.0,
                  location: "367 Route 22",
                ),
                TransactionBox(
                  bgColor: Colors.yellow.shade100,
                  iconBgColor: Colors.yellow.shade300,
                  icon: Icons.person_outline,
                  name: "Victa Wille",
                  amount: "+\$120",
                  percentPerMonth: "32% / month",
                  percentBar: 50.0,
                  location: "1273 Libertry ",
                ),
              ],
            ),

            //transaction adding section
            const SizedBox(
              height: 35.0,
            ),
            Container(
              //main container decoration
              padding: const EdgeInsets.all(10.0),
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(80.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //inner row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //shopping icon container section
                      Container(
                        padding: const EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade300,
                                Colors.yellow.shade300
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            shape: BoxShape.circle),
                        child: const Icon(Icons.shopping_bag),
                      ),

                      //new transaction title section
                      const SizedBox(
                        width: 15.0,
                      ),
                      const Text(
                        "New Transaction",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: "Montserrat"),
                      ),
                    ],
                  ),

                  //add icon container section
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  )
                ],
              ),
            ),

            //my cards section
            const SizedBox(
              height: 45.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "My Cards",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      fontFamily: "Poppins"),
                ),
                Icon(
                  Icons.more_horiz,
                  size: 30.0,
                )
              ],
            ),

            //card details container section
            const SizedBox(
              height: 45.0,
            ),
            Expanded(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  //main container decoration section
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.green.shade300, Colors.yellow.shade300],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //expiry date section
                      Row(
                        children: [
                          RWidgets().dateContainer(Colors.white, "10/24"),
                          const SizedBox(width: 20.0),
                          RWidgets().dateContainer(Colors.white, "USD"),
                        ],
                      ),

                      //card owner name section
                      const SizedBox(
                        height: 25.0,
                      ),
                      const Text(
                        "Kalyan Workers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            fontFamily: "Montserrat"),
                      ),

                      // card number section
                      const SizedBox(
                        height: 21.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "2384",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: "Poppins"),
                          ),
                          RWidgets().dotText(),
                          RWidgets().dotText(),
                          RWidgets().dotText(),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 185.0,
                  left: 120.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 30.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34.0),
                        color: Colors.black),
                    child: const Text(
                      "Add",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
