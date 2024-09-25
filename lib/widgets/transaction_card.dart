import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/images.dart';
import 'package:hubtel_coding_challenge_repo/model/transations_model.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE6EAED)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.time,
                  style: TextStyle(
                    fontSize: width * 0.032,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(transaction.imagePath),
                      radius: width * 0.06,
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.name,
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            transaction.phoneNumber,
                            style: TextStyle(
                              fontSize: width * 0.035,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        statusChip(transaction.status, width),
                        SizedBox(height: height * 0.01),
                        Text(
                          "GHS ${transaction.amount}",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(height: 1, color: Color(0xFFE6EAED)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                  AppImages().person,
                  width: width * 0.055,
                ),
                SizedBox(width: width * 0.01),
                Text(
                  transaction.transactionType,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: width * 0.035,
                  ),
                ),
                if (transaction.referenceMessage != null) ...[
                  const Text(
                    " • ",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    transaction.referenceMessage ?? '',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: width * 0.035,
                    ),
                  ),
                ],
                const Spacer(),
                Icon(
                  Icons.star,
                  color: transaction.isFavorite ? Colors.amber : Colors.white,
                  size: width * 0.06,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

    Widget statusChip(String status, double width) {
    bool isSuccess = status.toLowerCase() == 'successful';
    Color statusColor = isSuccess
        ? const Color.fromARGB(94, 219, 247, 224)
        : const Color.fromARGB(103, 253, 176, 172);
    Color textColor = isSuccess
        ? const Color.fromARGB(255, 1, 255, 56)
        : const Color.fromARGB(255, 248, 12, 0);
    IconData statusIcon = isSuccess ? Icons.check_circle : Icons.cancel;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            statusIcon,
            color: textColor,
            size: width * 0.033,
          ),
          SizedBox(width: width * 0.01),
          Text(
            status,
            style: TextStyle(
              color: textColor,
              fontSize: width * 0.031,
            ),
          ),
        ],
      ),
    );
  }
}
