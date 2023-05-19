import 'package:flutter/material.dart';
import 'Expansionpanel.dart';
import 'AppExpansionTile.dart';
class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Expansion View',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext          context)=>Expansiontile()));
                    },
                    child: Text(
                      'ExpansionTile'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context)=>Expansionpanel()));
                    },
                    child: Text(
                      'ExpansionPanel'
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}