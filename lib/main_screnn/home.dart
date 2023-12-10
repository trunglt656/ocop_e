import 'package:ecommerce/widget/fake_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
          appBar: AppBar(
            title: const FakeSearch(),
            bottom: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow,
                indicatorWeight: 4,
                tabs: [
                  RepeatTab(lable: "Men"),
                  RepeatTab(lable: "Women"),
                  RepeatTab(lable: "Shoes"),
                  RepeatTab(lable: "Bags"),
                  RepeatTab(lable: "Electronic"),
                  RepeatTab(lable: "Accsessriers"),
                  RepeatTab(lable: "Home and Garden "),
                  RepeatTab(lable: "Kids"),
                  RepeatTab(lable: "Beauty"),
                ]),
            elevation: 0,
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("Men page"),
              ),
              Center(
                child: Text("women page"),
              ),
              Center(
                child: Text("Shoes page"),
              ),
              Center(
                child: Text("Bags page"),
              ),
              Center(
                child: Text("Electronic page"),
              ),
              Center(
                child: Text("Accessories page"),
              ),
              Center(
                child: Text("Home and Garden page"),
              ),
              Center(
                child: Text("Kids page"),
              ),
              Center(
                child: Text("Beauty page"),
              ),
            ],
          )),
    );
  }
}

class RepeatTab extends StatelessWidget {
  final String lable;
  const RepeatTab({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(lable, style: TextStyle(color: Colors.grey.shade500)),
    );
  }
}
