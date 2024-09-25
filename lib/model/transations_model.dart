import 'package:hubtel_coding_challenge_repo/constants/images.dart';

class Transaction {
  String imagePath;
  String name;
  String time;
  String status;
  String amount;
  String transactionType;
  String? referenceMessage;
  String date;
  String phoneNumber;
  bool isFavorite; 

  Transaction({
    required this.imagePath,
    required this.name,
    required this.time,
    required this.status,
    required this.transactionType,
    this.referenceMessage,
    required this.date,
    required this.amount,
    required this.phoneNumber,
    this.isFavorite = false, 
  });
}

List<Transaction> transactions = [
  Transaction(
      imagePath: AppImages().mtn,
      name: 'Kwabena Uncle Ebo',
      time: '14:45',
      status: 'Successful',
      transactionType: 'Personal',
      referenceMessage: 'Cool your heart wai',
      date: 'May 24, 2023',
      amount: '500',
      phoneNumber: "024 123 4567",
      isFavorite: true 
      ),
  Transaction(
      imagePath: AppImages().absabank,
      name: 'Absa Bank',
      time: '14:45',
      status: 'Failed',
      transactionType: 'Personal',
      amount: '600',
      referenceMessage: 'Cool your heart wai',
      date: 'May 24, 2023',
      phoneNumber: "024 123 4567"),
  Transaction(
      imagePath: AppImages().mtn,
      name: 'Emmanuel Rockson',
      time: '14:45',
      status: 'Failed',
      transactionType: 'Other',
      amount: '300',
      referenceMessage: 'Cool your heart wai',
      date: 'May 23, 2023',
      phoneNumber: "024 123 4567"),
  Transaction(
      imagePath: AppImages().mtn,
      name: 'Absa Bank',
      time: '14:45',
      status: 'Failed',
      amount: '500',
      transactionType: 'Other',
      date: 'May 23, 2023',
      phoneNumber: "024 123 4567"),
      Transaction(
      imagePath: AppImages().mtn,
      name: 'Kwabena Uncle Ebo',
      time: '14:45',
      status: 'Successful',
      transactionType: 'Personal',
      referenceMessage: 'Cool your heart wai',
      date: 'May 22, 2023',
      amount: '500',
      phoneNumber: "024 123 4567",
      isFavorite: true),
  Transaction(
      imagePath: AppImages().absabank,
      name: 'Absa Bank',
      time: '14:45',
      status: 'Failed',
      transactionType: 'Personal',
      amount: '600',
      isFavorite: true ,
      referenceMessage: 'Cool your heart wai',
      date: 'May 22, 2023',
      phoneNumber: "024 123 4567"),
];
