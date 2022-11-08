import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class DemoOutlinedButton extends StatelessWidget {
  const DemoOutlinedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        child: Text("click me"),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: () {
          log("click", name: "INFO");
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),
    );
  }
}

class DemoTextButton extends StatelessWidget {
  const DemoTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "click me",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.black87,
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("你按下TextButton"),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            action: SnackBarAction(
              label: 'Toast訊息',
              textColor: Colors.white,
              onPressed: ()=>Fluttertoast.showToast(
                  msg: '你按下SnackBar',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 20.0),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),
    );
  }
}

class DemoIconButton extends StatelessWidget {
  const DemoIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        iconSize: 50,
        color: Colors.amber,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: Icon(Icons.ac_unit),
        onPressed: () {
          log("click", name: "INFO");
        },
      ),
    );
  }
}

class DemoElevatedButton extends StatelessWidget {
  const DemoElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("click me"),
        style: ElevatedButton.styleFrom(
          elevation: 20,
        ),
        onPressed: () {
          log("click", name: "INFO");
        },
      ),
    );
  }
}

class DemoNullButton extends StatelessWidget {
  const DemoNullButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        child: Text("click me"),
        onPressed: null,
      ),
    );
  }
}