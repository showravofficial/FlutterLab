import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPf extends StatefulWidget {
  const SharedPf({super.key});

  @override
  State<SharedPf> createState() => _SharedPfState();
}

class _SharedPfState extends State<SharedPf> {
  int _counter = 0;

  void _increment() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
    });
    pref.setInt("Counter", _counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LsharedP();
  }

  void LsharedP() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      _counter = pref.getInt("Counter") ?? 0;
    });
  }

  void _clear() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      pref.remove("Counter").then((value) {
        if (value) {
          _counter = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$_counter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _increment,
                child: Text(
                  "++",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: _clear,
                child: Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
