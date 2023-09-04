import 'package:fast_app_base/screen/main/tab/stock/stocks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_stock_item.dart';
import 'package:flutter/material.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((e) => StockItem(e)).toList(),
      ],
    );
  }
}
