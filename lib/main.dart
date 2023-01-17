import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        leading: Icon(Icons.done),
        elevation: 0,
        backgroundColor: Colors.lightGreenAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Icon(Icons.alarm),
                Text("All Tickets"),
                SizedBox(width: 10),
                Icon(Icons.dangerous),
                Text("Report"),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            FlipCard(
              flipOnTouch: true,
              fill: Fill.none, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.01),
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.maxFinite,
                color: Colors.lightGreenAccent,
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.center, child: Text('Transport Dept. of Delhi')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('DL1PC7801'),
                            Text('Rs 9.0'),
                          ],
                        ),
                        Divider(color: Colors.black),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bus Route'),
                            Text('Fare'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('511A'),
                            Text('Rs 10.0'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Booking Time'),
                            Text('Tickets'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date Time'),
                            Text('1'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Starting stop'),
                            Text('Sarvo Priya Vihar'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ending stop'),
                            Text('crpf camp (crown plaza)'),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "T54F5VEOXI5VEOXI",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: Colors.lightGreenAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                            onPressed: () {},
                            icon: Icon(Icons.qr_code),
                            label: Text(
                              "Show Qr Code",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              back: Container(
                child: Text('Back'),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.01, right: MediaQuery.of(context).size.height * 0.01, bottom: 15),
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: Text(
                  "Get Latest ticket",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
