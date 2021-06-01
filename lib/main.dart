import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: NinjaCard(),
  ));

class NinjaCard extends StatefulWidget {

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/min.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Text(
                'FIRST NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nikita',
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(Icons.email,
                color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                    'nikita@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



