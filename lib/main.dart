import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'button_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ButtonState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Button Provider',
        theme: ThemeData.dark(),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button States'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Button: ${Provider.of<ButtonState>(context).textString}',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              onPressed: () {
                Provider.of<ButtonState>(context, listen: false)
                    .selectButton(1);
              },
              color: Provider.of<ButtonState>(context).buttonOneColor,
              child: Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'Raised Button One',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {
                Provider.of<ButtonState>(context, listen: false)
                    .selectButton(2);
              },
              color: Provider.of<ButtonState>(context).buttonTwoColor,
              child: Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'Raised Button Two',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {
                Provider.of<ButtonState>(context, listen: false)
                    .selectButton(3);
              },
              color: Provider.of<ButtonState>(context).buttonThreeColor,
              child: Container(
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    'Raised Button Three',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
