import 'package:flutter/material.dart';
import 'list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEBEBEB)),
      home: MyHomePage(title: 'travler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const double _hPad = 8.0;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(_hPad, 20, 10, _hPad),
          children: <Widget>[
            ListItem("assets/images/amsterdam.jpeg", "Amsterdam",
                "City in Netherlands", 4),
            ListItem("assets/images/madrid.jpeg", "Madrid",
                "City in Spain", 3),
            ListItem("assets/images/hamburg-hafencity.jpg", "Hamburg",
                "City in Germany", 4),
            ListItem("assets/images/chicago.jpeg", "Chicago",
                "City in America", 4),
            ListItem("assets/images/los_angeles.jpeg", "Los Angeles",
                "City in America", 5),
            ListItem("assets/images/miami.jpeg", "Miami",
                "City in America", 5),
            ListItem("assets/images/new_york.jpeg", "New York",
                "City in America", 5),
            ListItem("assets/images/san_fransisco.jpeg", "San Fransisco",
                "City in America", 5),
            ListItem("assets/images/toronto.jpeg", "Toronto",
                "City in Canada", 4.5),
            ListItem("assets/images/seattle.jpeg", "Seattle",
                "City in America", 4),
            ListItem(
                "assets/images/frankfurt.jpeg", "Frankfurt", "City in Germany", 4)
          ],
        ));
  }
}
