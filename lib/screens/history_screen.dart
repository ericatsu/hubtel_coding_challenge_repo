import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:hubtel_coding_challenge_repo/model/transations_model.dart';
import 'package:hubtel_coding_challenge_repo/shared/helpers.dart';
import 'package:hubtel_coding_challenge_repo/widgets/float_button.dart';
import 'package:hubtel_coding_challenge_repo/widgets/top_bar.dart';
import 'package:hubtel_coding_challenge_repo/widgets/transaction_card.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentSegment = 0; 

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: height * 0.025, 
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                child: CustomSlidingSegmentedControl<int>(
                  height: 50,
                  fixedWidth: width * 0.45, 
                  children: const {
                    0: Text('History', style: TextStyle(fontSize: 18)),
                    1: Text('Transaction Summary', style: TextStyle(fontSize: 18)),
                  },
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(101, 229, 229, 234),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  onValueChanged: (index) {
                    setState(() {
                      _currentSegment = index; 
                    });
                  },
                ),
              ),
              SizedBox(height: height * 0.01),
              const Divider(),
              const TopBar(),
              SizedBox(height: height * 0.01),
              Expanded(
                child: _currentSegment == 0 ? historyList() : transactionSummary(), // Conditionally renders history or transaction summary
              ),
            ],
          ),
          const FloatButton(), 
        ],
      ),
    );
  }

  Widget historyList() {
    // Sort transactions by date in descending order
    transactions.sort((a, b) => parseDate(b.date).compareTo(parseDate(a.date)));

    // Group transactions by date
    Map<String, List<Transaction>> groupedTransactions = {};
    for (var transaction in transactions) {
      if (!groupedTransactions.containsKey(transaction.date)) {
        groupedTransactions[transaction.date] = [];
      }
      groupedTransactions[transaction.date]?.add(transaction);
    }

    List<Widget> transactionWidgets = [];
    groupedTransactions.forEach((date, transactions) {
      // Adds a date header for each group of transactions
      transactionWidgets.add(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xffE6EAED),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              date, 
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
      // Adds the transactions for the given date
      transactionWidgets.addAll(
        transactions
            .map((transaction) => TransactionCard(transaction: transaction))
            .toList(),
      );
    });

    return ListView(
      children: transactionWidgets, // Returns the list of transactions grouped by date
    );
  }

  Widget transactionSummary() {
    return const Center(
      child: Text("Transaction Summary."),
    );
  }
}
