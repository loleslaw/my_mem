import 'package:flutter/material.dart';
import 'package:my_mem/_services/authService.dart';
import 'package:my_mem/_services/auth_service_adapter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AuthServiceType initialAuthServiceType;
  const MyApp({this.initialAuthServiceType = AuthServiceType.firebase});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(builder: (_) => AuthServiceAdapter(
            initialAuthServiceType: initialAuthServiceType,
          ),
        ),
      ],
      child: ,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      )),
    );
  }
}
