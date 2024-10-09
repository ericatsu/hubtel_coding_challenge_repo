import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/images.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';
import 'package:hubtel_coding_challenge_repo/model/transations_model.dart';
import 'package:hubtel_coding_challenge_repo/widgets/status_chip.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final cardWidth = AppStyles.getResponsiveWidth(context, 345);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
        width: cardWidth,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.cardBoarder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.all(AppStyles.getResponsiveWidth(context, 10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.time,
                    style: AppStyles.nunitoSansRegularMedium(
                      context,
                      color: AppColors.textLight,
                    ),
                  ),
                  SizedBox(height: AppStyles.getResponsiveHeight(context, 12)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(transaction.imagePath),
                        radius: AppStyles.getResponsiveWidth(context, 16.5),
                      ),
                      SizedBox(
                          width: AppStyles.getResponsiveWidth(context, 10)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    transaction.name,
                                    style: AppStyles.nunitoSansRegularLarge(
                                      context,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ),
                                statusChip(context, transaction.status),
                              ],
                            ),
                            SizedBox(
                                height:
                                    AppStyles.getResponsiveHeight(context, 4)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  transaction.phoneNumber,
                                  style: AppStyles.nunitoSansRegularLarge(
                                    context,
                                    color: AppColors.textColor2,
                                  ),
                                ),
                                Text(
                                  "GHS ${transaction.amount}",
                                  style: AppStyles.nunitoSansExtraboldLarge(
                                    context,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(height: 1, color: AppColors.cardBoarder),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppStyles.getResponsiveWidth(context, 12),
                vertical: AppStyles.getResponsiveWidth(context, 8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppImages().person,
                    width: AppStyles.getResponsiveWidth(context, 25),
                    height: AppStyles.getResponsiveWidth(context, 25),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: AppStyles.getResponsiveWidth(context, 8)),
                  Text(
                    transaction.transactionType,
                    style: AppStyles.nunitoSansRegularMedium(
                      context,
                      color: AppColors.textColor,
                    ),
                  ),
                  if (transaction.referenceMessage != null) ...[
                    const Text(
                      " • ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      transaction.referenceMessage!,
                      style: AppStyles.nunitoSansRegularMedium(
                        context,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: transaction.isFavorite
                        ? Colors.amber
                        : Colors.transparent,
                    size: AppStyles.getResponsiveWidth(context, 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
