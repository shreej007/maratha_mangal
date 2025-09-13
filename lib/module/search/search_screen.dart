
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/search/search_binding.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<SearchScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchProfileController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              children: [Text("Search")],
            ),
          ),
        ),
      )
    );
  }
}
