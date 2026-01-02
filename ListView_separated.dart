
import 'package:flutter/material.dart';


class ListviewSeparated extends StatelessWidget {


  const ListviewSeparated({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(


        appBar: AppBar(


          backgroundColor: Colors.red[700],

          title: Text("Listview_Separeted"),
        ),

        body: ListView.separated(

            itemCount: 20,

            itemBuilder: (context, index) {

              return Card(

                child: ListTile(


                  title: Text("Nasrin Akther Choity $index"),

                  subtitle: Text("01308965353 $index"),

                  trailing: Icon(Icons.delete),
                ),
              );
            },

            separatorBuilder: (context, index) {


              return Divider(


                color: Colors.green[100 * (index + 1)],


                thickness: 6,
              );
            }
        )
    );
  }
}


