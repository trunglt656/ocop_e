import 'package:ecommerce/utilities/categ_list.dart';
import 'package:ecommerce/widget/fake_search.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const FakeSearch()),
        body: Stack(children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: cateView(size)),
        ]));
  }

  Widget sideNavigator(Size size) {
    return Container(
        height: size.height,
        width: size.width * 0.2,
        color: Colors.grey.shade300,
        child: ListView.builder(
            // scrollDirection: Axis.vertical,
            itemCount: maincateg.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 80,
                child: Center(child: Text(maincateg[index])),
              );
            }));
  } // 10

  Widget cateView(Size size) {
    return Container(
        height: size.height, width: size.width * 0.8, color: Colors.white);
  }
}
