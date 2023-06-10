import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("background color behind a text "),
        ),
        body:
        Center(
          child: Text(
            'This is a very important text ',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 20,
                background: Paint()
                  ..strokeWidth = 40.0
                  ..color = Colors.red
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
          ),
        )

    );
  }

}