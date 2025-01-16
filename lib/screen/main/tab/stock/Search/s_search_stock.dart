import 'package:fast_app_base/screen/main/tab/stock/Search/search_stock_data.dart';
import 'package:fast_app_base/screen/main/tab/stock/Search/w_popular_search_stock_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/Search/w_search_histroy_stock_list.dart';
import 'package:fast_app_base/screen/main/tab/stock/Search/w_stock_search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    Get.put(SearchStockData());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppbar(
        controller: controller,
      ),
      body: ListView(
        children: [
          SearchHistoryStockList(),
          PopularSearchStockList(),
        ],
      ),
    );
  }
}
