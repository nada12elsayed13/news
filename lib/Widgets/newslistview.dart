// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';


import 'package:news/Widgets/newsTile.dart';
import 'package:news/Widgets/webview.dart';

import '../models/articleModel.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WebView(url: articles[index].url);
            }));
          },
          child: NewsTile(
            articleModel: articles[index],
          ),
        ),
      );
    }));
  }
}
