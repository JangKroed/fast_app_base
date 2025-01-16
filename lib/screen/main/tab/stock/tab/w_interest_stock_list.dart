import 'package:fast_app_base/screen/main/tab/stock/tab/w_stock_item.dart';
import 'package:flutter/material.dart';

import '../stocks_dummy.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((e) => StockItem(e)).toList(),
      ],
    );
  }
}
