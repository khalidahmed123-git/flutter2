import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  TextEditingController r=TextEditingController();
  List<String> data=["khalid","ahmed","khfg"];
  String refeish="";
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),
        label: "icons"),
        BottomNavigationBarItem(icon: Icon(Icons.add),
        label: "icons"),



      ],

      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        
        child: DrawerHeader(
          child: Text("hgfhghj"),
        )),
      appBar: AppBar(
        title: Text("Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: r,
              decoration: InputDecoration(
                label: Text("Enter"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              onSubmitted: (value){
                setState(() {
                 data.add(value);
                 r.clear();

                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: ListView.builder(itemBuilder: (context,index)=>Build(data[index],index),itemCount: data.length,)),
            Container(color: Colors.orange,child: TextButton(onPressed: (){
              setState(() {
                data.add(r.text);
              });
            }, child: Text("ADD"))),
            Container(color: Colors.orange,child: TextButton(onPressed: (){
              setState(() {
                data[select]=r.text;

              });
            }, child: Text("reblas"))),
          ],
        ),
      ),


    );
  }
  Widget Build(String dat,int index)=> GestureDetector(
    onTap: (){
      setState(() {
        r.text=dat;
        select=index;




      });
    },

    child: Card(
      color: Colors.orange,


      child: ListTile(

        leading: IconButton(onPressed: (){
          setState(() {
            data[select]=r.text;
          });

        }, icon: Icon(Icons.refresh)),
        title: Center(child: Text("$dat")),
        trailing: IconButton(onPressed: (){
          setState(() {
            data.removeAt(index);
          });

        }, icon: Icon(Icons.delete)),

      ),
    ),
  );
}
