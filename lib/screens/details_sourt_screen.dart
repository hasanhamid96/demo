import 'package:demo/providers/souret.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsSourtScreen extends StatelessWidget {
  static var routeName='DetailsSourtScreen';
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context).settings.arguments as String;
    final souret=Provider.of<Sourets>(context).items.firstWhere((element) => element.id==id);
    return Scaffold(
      appBar: AppBar(
        title: Text('${souret.title}'),

      ),
      body:Center(child: Text('باقي التفاصيل انت كملهه'),)
    );
  }
}
