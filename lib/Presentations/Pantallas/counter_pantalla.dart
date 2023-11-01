import 'package:flutter/material.dart';


class ContadorPantalla extends StatefulWidget {
  const ContadorPantalla({super.key});
  State<ContadorPantalla> createState() => _ContadorPantalla();


}

class _ContadorPantalla extends State<ContadorPantalla>{
  int cont=0;
  String texto1="No hay clicks";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Contador",style: TextStyle(fontWeight:FontWeight.bold,),),
        actions: [
          IconButton(onPressed: () {
            cont=0;
            setState(() {

            });
          }, icon: Icon(Icons.refresh),

          ),
        ],


      ),
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cont.toString(), style: TextStyle(fontSize: 100, fontWeight: FontWeight.w100),),
          Text(texto1, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
        ],
      )),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          this.cont += 1;
          if(this.cont==1){
            texto1="Click";
          }else{
            texto1="Clicks";
          }
          setState(() {

          });

        },child: Icon(Icons.add),
      ),

    ) ;
  }

}


