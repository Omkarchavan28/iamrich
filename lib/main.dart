import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = true;
  String richImage =
      'https://image.freepik.com/free-vector/diamond-vector_1034-695.jpg';
  String poorImage =
      'https://image.freepik.com/free-photo/natural-wood-charcoal-bamboo-charcoal-powder-has-medicinal-properties-with-traditional-charcoal_34936-2528.jpg';

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isSwitched ? Color(0xFF1c3a42) : Colors.white,
        appBar: AppBar(
          title: isSwitched ? Text('I Am Rich') : Text('I Am Poor'),
          centerTitle: true,
          backgroundColor: Color(0xFF192229),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Switch(
            activeColor: Color(0xFFffffff),
            inactiveThumbColor: Color(0xFF192229),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
          ),
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Container(
                child: Image.network(
                  isSwitched ? richImage : poorImage,
                ),
              ),
            ),
          ),
        ]));
  }
}
