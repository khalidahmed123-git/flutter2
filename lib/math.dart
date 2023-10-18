import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  TextEditingController r=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Math"),
      ),
      body: Column(
        children: [
          TextField(
            controller: r,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: Text("Enter"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
            onSubmitted: (value){
              setState(() {

                if(aoaly(int.parse(r.text))){
                  result="اولي";


                }
                else{
                  result="غير اولي";
                }


              });
            },
          ),
          Text("$result"),
        ],
      ),
    );
  }
  bool aoaly(int number){
    if(number<=1){
      return false;
    }
    for(int i=2;i<=number/2;i++){
      if(number % i==0){
        return false;
      }

    }
    return true;
  }
}
