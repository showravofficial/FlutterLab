import 'package:flutter/material.dart';

class FutureW extends StatelessWidget {
  const FutureW({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FutureBuilder(future: getData(), builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          if(snapshot.hasData){
            return Text(snapshot.data.toString());
          }
          else{
            return Text(snapshot.error.toString());
          }
        },),
      ),
    );
  }
}

Future<String> getData() {
  return Future.delayed(Duration(seconds: 3), () {
    // return "Ok";
    throw "Error";
  });
}
