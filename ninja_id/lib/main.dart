import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaID(),
  ));
}
class NinjaID extends StatefulWidget {
  @override
  _NinjaIDState createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Center(
          child: Text('Ninja ID Card',
          style: TextStyle(
            color: Colors.pinkAccent[100],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: <Widget> [
           CircleAvatar(
             backgroundImage: NetworkImage('https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
             radius: 40.0,
           ),
              SizedBox(height: 30),
            Text(
            'NAME',
             style: TextStyle(
              color: Colors.pink,
             ),
            ),
              Text(
                'Ninja',
                style: TextStyle(
                  color: Colors.lightGreen,
                ),
              ),
              SizedBox(height: 30.0,),
              Text(
                'Level',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
              Text(
                '$level',
                style: TextStyle(
                  color: Colors.lightGreen,
                ),
              ),
            ],
           ),
        ),
      ),
      floatingActionButton:
         FloatingActionButton(
          onPressed: (){
            setState(() {
              level++;
            });
          },
          backgroundColor: Colors.pinkAccent,
        ),
      );

  }
}


