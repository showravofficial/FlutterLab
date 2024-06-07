import 'package:flutter/material.dart';

class Dialogw extends StatelessWidget {
  const Dialogw({super.key});

  @override
  Widget build(BuildContext context) {
    var dialog=AlertDialog(
      title: Text("Developing process"),
      content: Text("Comming Soon....."),
      actions: [
        TextButton(onPressed: (){
         Navigator.pop(context);
        }, child: Text("Ok"))
      ],);
    return Center(
      child: TextButton(
        onPressed: () {
          showDialog(context: context, builder: (context) => dialog);
        },
        child: Text("Press"),
      ),
    );
  }
}
