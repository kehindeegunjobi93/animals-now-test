import 'package:flutter/material.dart';

class Counter2 extends StatefulWidget {
  final int pageNumber;

  const Counter2({Key key, this.pageNumber}) : super(key: key);

  @override
  _Counter2State createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int _counter = 0;
  int index;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      index = widget.pageNumber;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter $index'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //The increment me button
            Material(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
              elevation: 18.0,
              color: Colors.blue,
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                color: Colors.blue,
                minWidth: 200.0,
                height: 35,
                child: new Text('Increment me!',
                    style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: _incrementCounter,
              ),
            ),
            SizedBox(height: 20,),
            //The counter
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

    );
  }
}
