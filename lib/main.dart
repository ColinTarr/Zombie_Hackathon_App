import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            // This will be applied to the "back" icon
            iconTheme: IconThemeData(color: Colors.red),
            // This will be applied to the action icon buttons that locates on the right side
            actionsIconTheme: IconThemeData(color: Colors.amber),
            centerTitle: false,
            elevation: 15,
            titleTextStyle: TextStyle(color: Colors.green),
          )
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Options();
  }
}

class Options extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: const Text('                     Communications Page',
            style: TextStyle(fontSize: 18),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'How would you like to communicate?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text(
                          'SMS', style: TextStyle(fontSize: 35),),
                        onPressed: () {
                          if (kDebugMode) {
                            launch('https://flutter.dev/');
                            launch('sms:+3304694769?body=Test Message');
                          }
                        },
                      ),
                    ],
                  )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'Email', style: TextStyle(fontSize: 35),),
                      onPressed: () {
                        if (kDebugMode) {
                          launch('https://flutter.dev/');
                          launch('mailto:tarr_colin@student.mahoningctc.com?subject=Test');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}