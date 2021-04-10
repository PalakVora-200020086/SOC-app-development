import 'package:flutter/material.dart';
import 'quotes.dart';


class QuoteCard extends StatelessWidget {
  final Quote quotes;
  final Function delete;
  QuoteCard({this.quotes, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Center(child: Text(quotes.text)),
              SizedBox(height: 6),
              Center(child: Text(quotes.author)),
              SizedBox(height: 6),
              FloatingActionButton(onPressed: delete)


            ]
        ),
      ) ,
    );
  }
}

