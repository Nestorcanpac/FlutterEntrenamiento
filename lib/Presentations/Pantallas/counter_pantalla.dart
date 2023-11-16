import 'package:flutter/material.dart';


import 'package:flutter/material.dart';


class contador extends StatefulWidget{
  const contador({super.key});

  @override
  State<contador> createState() => _contador();





}


class _contador  extends State<contador> {
  String salida="out";
  String resul="VACIO";
  double cont=0;
  double contHistory=0;
  double num1 = 0;
  double num2 = 0;
  TextEditingController textController1 = TextEditingController();
  String entered1="";
  TextEditingController textController2 = TextEditingController();
  String entered2="";


  @override
  void initState(){
    super.initState();
    textController1.addListener(() {
      setState(() {
        entered1=textController1.text;
        num1=double.parse(entered1);
      });
    });
    textController2.addListener(() {
      setState(() {
        entered2=textController2.text;
        num2=double.parse(entered2);
      });
    });
  }

  @override
  void dispose() {
    textController1.dispose();
    textController2.dispose();
    super.dispose();
  }

  void cambiaState(){
    textController1.text=entered1;
    textController2.text=entered2;
  }



  void clearText(){
    textController1.clear();
    textController2.clear();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora",style: TextStyle(fontSize: 30),),
        actions: [
          IconButton( icon: Icon(Icons.assignment),
            onPressed: () {
              setState(() {
                cambiaState();
                salida=cont.toString();
                resul="Resultado";
              });
            },)
        ],
      ),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            children: [


              Expanded(child: TextField(
                controller: textController1,
                decoration: const InputDecoration(labelText: "Primer Número",
                  border: OutlineInputBorder(),),

              ),),
              Expanded(child: TextField(
                controller: textController2,
                decoration: const InputDecoration(labelText: "Segundo Número",
                  border: OutlineInputBorder(),),

              ),)
            ],
          ),



          Text(salida, style: TextStyle(fontSize: 200),),
          Text(resul, style: TextStyle(fontSize: 50),),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton( onPressed: () {
                    setState(() {
                      resul="Resultado";
                      cont=num1+num2;
                      contHistory=cont;
                      salida=cont.toString();
                    });
                  },
                    child: Icon(Icons.add),),

                  SizedBox(width: 20,
                  ),

                  ElevatedButton( onPressed: () {
                    setState(() {
                      cont=num1-num2;
                      salida=cont.toString();
                    });
                  },
                      child: Icon(Icons.remove)),
                ],
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton( onPressed: () {
                   setState(() {
                     cont=num1*num2;
                     salida=cont.toString();
                   });
                 },
                     child: Icon(Icons.clear)),
                 const SizedBox(width: 20,),

                 ElevatedButton( onPressed: () {
                   setState(() {
                     cont=num1/num2;
                     salida=cont.toString();
                   });
                 },
                     child: const Text("÷",style: TextStyle(fontSize: 30),))
               ],
             )



            ],
          )


        ],
      ),),

      floatingActionButton:   FloatingActionButton(

        onPressed: () {
          salida="out";
          resul="VACIO";
          clearText();

          setState(() {
          });
        },
        child: Icon(Icons.autorenew_rounded),

      ),
    );
  }
}