// Importing Flutter Material package
// This gives access to all material design widgets like Scaffold, AppBar, ListView, Card, etc.
import 'package:flutter/material.dart';

// Creating a StatelessWidget
// StatelessWidget means this screen does NOT change its state dynamically
class ListviewSeparated extends StatelessWidget {

  // Constructor of the widget
  // super.key is used for widget identification and optimization
  const ListviewSeparated({super.key});

  // build() method is called when the widget is rendered on screen
  @override
  Widget build(BuildContext context) {

    // Scaffold provides the basic structure of the app screen
    // It contains AppBar, Body, FloatingActionButton, etc.
    return Scaffold(

      // AppBar is the top bar of the app
        appBar: AppBar(

          // Setting background color of AppBar
          backgroundColor: Colors.red[700],

          // Title text displayed in AppBar
          title: Text("Listview_Separeted"),
        ),

        // Body of the Scaffold
        // ListView.separated is used to create a list with separators between items
        body: ListView.separated(

          // Total number of list items
            itemCount: 20,

            // itemBuilder builds each list item
            // context = current widget context
            // index = position of the item (0, 1, 2, ...)
            itemBuilder: (context, index) {

              // Each list item is wrapped inside a Card widget
              // Card gives elevation and rounded corners
              return Card(

                // ListTile is a ready-made row layout widget
                child: ListTile(

                  // Title of the ListTile
                  // $index dynamically shows item number
                  title: Text("Nasrin Akther Choity $index"),

                  // Subtitle text under the title
                  subtitle: Text("01308965353 $index"),

                  // Trailing widget appears at the right side
                  // Here we use a delete icon
                  trailing: Icon(Icons.delete),
                ),
              );
            },

            // separatorBuilder creates a widget between each list item
            // This is called after every item except the last one
            separatorBuilder: (context, index) {

              // Divider widget creates a horizontal line between items
              return Divider(

                // Color of divider
                // index+1 ensures color value does not start from zero
                // 100*(index+1) creates different shades of green
                color: Colors.green[100 * (index + 1)],

                // Thickness controls the height of the divider line
                thickness: 6,
              );
            }
        )
    );
  }
}


// ListView.separated → List with custom separators
//
// itemBuilder → Builds list items
//
// separatorBuilder → Builds divider between items
//
// Card → Gives elevation and UI beauty
//
// ListTile → Pre-built row layout
//
// $index → String interpolation in Dart