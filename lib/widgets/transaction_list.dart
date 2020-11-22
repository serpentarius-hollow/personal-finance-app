import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return transactions.isEmpty
        ? Center(child: Text('No Transactions Added Yet!'))
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(
                transaction: transactions[index],
                mediaQuery: mediaQuery,
                deleteTransaction: deleteTransaction,
              );
            },
            itemCount: transactions.length,
          );
  }
}
