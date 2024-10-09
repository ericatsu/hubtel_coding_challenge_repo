import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';
import 'package:hubtel_coding_challenge_repo/model/transations_model.dart';
import 'package:hubtel_coding_challenge_repo/shared/helpers.dart';
import 'package:hubtel_coding_challenge_repo/widgets/transaction_card.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({super.key});

  @override
  State<HistoryList> createState() => _HistoryListState();
}

class _HistoryListState extends State<HistoryList> {
  @override
  Widget build(BuildContext context) {
    transactions.sort((a, b) => parseDate(b.date).compareTo(parseDate(a.date)));

    Map<String, List<Transaction>> groupedTransactions = {};
    for (var transaction in transactions) {
      String dateKey = formatDate(parseDate(transaction.date));
      groupedTransactions.putIfAbsent(dateKey, () => []).add(transaction);
    }

    List<Widget> transactionWidgets = [];
    groupedTransactions.forEach((date, transactionsForDate) {
      transactionWidgets.add(
        Container(
          margin: const EdgeInsets.fromLTRB(8, 16, 0, 16),
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(date,
                style: AppStyles.nunitoSansExtraboldSmall(context,
                    color: AppColors.textLight)),
          ),
        ),
      );

      transactionWidgets.addAll(
        transactionsForDate
            .map((transaction) => TransactionCard(transaction: transaction))
            .toList(),
      );
    });

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      children: transactionWidgets,
    );
  }
}
