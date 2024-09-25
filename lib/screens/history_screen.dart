import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: CustomSlidingSegmentedControl<int>(
              height: 50,
              children: const {
                0: Text('History'),
                1: Text('Transaction Summary'),
              },
              onValueChanged: (index) {
                setState(() {
                  _currentSegment = index;
                });
              },
            ),
          ),
          Expanded(
            child: _currentSegment == 0
                ? _buildHistoryList()
                : _buildTransactionSummary(),
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryList() {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Emmanuel Rockson"),
          subtitle: Text("Personal • GHS 500"),
          trailing: Text("Successful"),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Absa Bank"),
          subtitle: Text("Other • GHS 500"),
          trailing: Text("Failed"),
        ),
      ],
    );
  }

  Widget _buildTransactionSummary() {
    return const Center(
      child: Text("Transaction Summary will be displayed here."),
    );
  }
}
