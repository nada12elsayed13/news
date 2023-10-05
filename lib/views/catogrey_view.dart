// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:news/Widgets/new_list_view_builder.dart';

class CatogreyView extends StatelessWidget {
  const CatogreyView({
    Key? key,
    required this.catogrey,
  }) : super(key: key);
  final String catogrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [NewsListViewBuilder(catogrey: catogrey,)],
      ),
    );
  }
}
