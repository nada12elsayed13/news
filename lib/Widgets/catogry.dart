// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:news/models/catogryModel.dart';
import 'package:news/views/catogrey_view.dart';

class Catogrey extends StatelessWidget {
  const Catogrey({
    Key? key,
    required this.catogrey,
  }) : super(key: key);
  final CategoryModel catogrey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatogreyView(
            catogrey: catogrey.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 160,
          height: 85,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(catogrey.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            catogrey.categoryName,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
