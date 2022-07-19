import 'package:dribble_ui_practice_4_money_saving_app/Pages/transactions.dart';
import 'package:dribble_ui_practice_4_money_saving_app/reusable_widgets/recent_details.dart';
import 'package:dribble_ui_practice_4_money_saving_app/reusable_widgets/saved_transactions.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //upper section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //search section
            Container(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 160.0, bottom: 10.0, top: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0),
                  borderRadius: BorderRadius.circular(25.0)),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: 28.0,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0),
                  )
                ],
              ),
            ),

            //profile icon section
            Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    color: Colors.blue[200], shape: BoxShape.circle
                    // borderRadius: BorderRadius.circular(8.0)
                    ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))
          ],
        ),

        //Title recent activity section
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "Recent Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),

        //recent activities section
        const SizedBox(
          height: 35.0,
        ),
        Column(
          children: [
            RecentDetails(
                percentage: "21%",
                costTitle: "Seabara Foods",
                costDate: "12 Jan 2022",
                costAmount: "\$98.60",
                costType: "Income",
                icon: Icons.arrow_upward,
                color: Colors.red.shade100),
            RecentDetails(
                percentage: "48%",
                costTitle: "Country Inn",
                costDate: "20 Mar 2022",
                costAmount: "\$139.00",
                costType: "Expenses",
                icon: Icons.arrow_downward,
                color: Colors.green.shade100),
            RecentDetails(
                percentage: "13%",
                costTitle: "Jersey Gardens",
                costDate: "28 Jun 2022",
                costAmount: "\$289.60",
                costType: "Income",
                icon: Icons.arrow_upward,
                color: Colors.yellow.shade100),
          ],
        ),

        //Title saved transactions section
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Saved Transactions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.black87,
            )
          ],
        ),

        //saved transactions section
        const SizedBox(
          height: 20.0,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SavedTransactions(
                    date: "12 Jan",
                    icon: Icons.home_filled,
                    type: "House Rent"),
                SavedTransactions(
                    date: "23 Jan",
                    icon: Icons.health_and_safety,
                    type: "Your Health")
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SavedTransactions(
                    date: "2 Dec", icon: Icons.card_giftcard, type: "Shopping"),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Transactions(),)),
                  child: Container(
                    padding: const EdgeInsets.all(23.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(35.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.green, Colors.yellow],
                                    )),
                                child: const Icon(
                                  Icons.home_filled,
                                  color: Colors.black,
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "15 Dec",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black54),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          "University",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ]),
    ));
  }
}
