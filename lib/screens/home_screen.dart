import 'package:demo/providers/souret.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'details_sourt_screen.dart';

class HomeScreen extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final sourts = Provider.of<Sourets>(context).items;
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: sourts.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 55,
                        width: 55,
                        color: Colors.black,
                        child: Center(
                            child: Text(
                          '${sourts[index].pageNum}',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)
                        ))),
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed(DetailsSourtScreen.routeName,arguments: sourts[index].id);
                        },

                        leading: Wrap(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.network(sourts[index].imageUrl),
                            ),
                            Text(' اياتها \n ${sourts[index].numOfSourt}'),

                          ],
                        ),
                        trailing: Text('${sourts[index].title}'),
                      ),
                    ),
                    Container(
                        height: 55,
                        width: 55,
                        color: Colors.black,
                        child: Center(child: Text('${counter += 1}',style: TextStyle(color: Colors.white),))),
                  ],
                ),
              ),
              Divider(
                color: Colors.black45,
                height: 0,
              )
            ],
          );
        },
      ),
    );
  }
}
