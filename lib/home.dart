import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_aprenda_ingles/bichos.dart';
import 'package:flutter_aprenda_ingles/numeros.dart';
import 'package:flutter_aprenda_ingles/vogais.dart';

class AprendaIngles extends StatefulWidget {
  const AprendaIngles({Key? key}) : super(key: key);

  @override
  _AprendaInglesState createState() => _AprendaInglesState();
}

class _AprendaInglesState extends State<AprendaIngles>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          //labelColor: Colors.green,
          //unselectedLabelColor: Colors.purple,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          tabs: [
            Tab(
              text: "Bichos",
            ),
            Tab(
              text: "Números",
            ),
           /* Tab(
              text: "Vogais",
            ),*/
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          //Vogais(),
        ],
      ),
    );
  }
}
