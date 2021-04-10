import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home : Quotes(),
  ));}
class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List <Quote> quotes =  [
    Quote(text:'abc', author:'JK'),
    Quote(text:'pqr', author:'JK'),
    Quote(text:'xyz', author:'JK')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('QUOTES'),
      ),
      body: Column(
        children: quotes.map((quote){
              return QuoteCard(
                  quotes :quote,
                  delete: (){
                    setState(() {
                      quotes.remove(quote);
                    });
                  }
              );
            }
        ).toList(),
      ),
    );
  }
}

