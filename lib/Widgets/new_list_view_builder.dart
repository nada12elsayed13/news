// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news/Widgets/newslistview.dart';

import '../Services/news_Servise.dart';
import '../models/articleModel.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    Key? key,
    required this.catogrey,
  }) : super(key: key);
  final String catogrey;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    
    super.initState();
    future = NewServices(dio: Dio()).getTopNews(catogrey: widget.catogrey);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('OOPS! There Was An Error, Try Later.'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
