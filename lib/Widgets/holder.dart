// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news/Services/news_Servise.dart';
// import 'package:news/Widgets/newsTile.dart';

// import '../models/articleModel.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewServices(dio: Dio()).getNews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 22),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           }));
//   }
// }
