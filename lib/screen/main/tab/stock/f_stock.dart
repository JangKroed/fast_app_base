import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            Tap(
              onTap: () => context.showSnackbar('검색'),
              child: Image.asset(
                '$basePath/icon/stock_search.png',
                height: 26,
                width: 26,
              ).p(10),
            ),
            Image.asset(
              '$basePath/icon/stock_calender.png',
              height: 26,
              width: 26,
            ).p(10),
            Image.asset(
              '$basePath/icon/stock_settings.png',
              height: 26,
              width: 26,
            ).p(10),
          ],
        ),
      ],
    );
  }
}
