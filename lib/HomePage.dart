import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F4F1),

      appBar: AppBar(
        title: Text(
          "Homepage",
          style: GoogleFonts.lobster(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF2A9D8F),
        foregroundColor: Colors.white,

        // leading: Icon(
        //   Icons.home,
        //   size: 25,
        // ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            tooltip: "Search",
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            tooltip: "Profile",
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(decoration: BoxDecoration(color: const Color.fromARGB(255, 45, 11, 1)), accountName: Text("Name"), accountEmail: Text("Email"), currentAccountPicture: Icon(Icons.person),),
          ListTile(leading: Icon(Icons.home),title: Text("HomePage"), onTap: (){},),
          Divider(),

          ListTile(leading: Icon(Icons.contact_page),title: Text("Contact"),hoverColor: Colors.blue, onTap: (){},),
          Divider(),

          Spacer(),
          ListTile(leading: IconButton(onPressed: (){}, icon: Icon(Icons.person)), trailing: IconButton(onPressed: (){}, icon: Icon(Icons.logout)), title: Text("Profile"), onTap: (){},),

        ],),
      ),
      // endDrawer: Drawer(),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: (){},
             style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 1, 27, 27), foregroundColor: Colors.white, side: BorderSide(color: Colors.deepOrange), fixedSize: Size(150, 100), elevation: 5, shadowColor: Colors.amber),
             child: Text("Text Button"),
            ),
          ),
          ElevatedButton(onPressed: (){},
           style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 1, 27, 27), foregroundColor: Colors.white, side: BorderSide(color: Colors.deepOrange), fixedSize: Size(150, 50), elevation: 5, shadowColor: Colors.amber
           ),
           child: Text("Elevated button"),),
          SizedBox(height: 10,),
          OutlinedButton(onPressed: (){}, child: Text("Outlined Button")),
          IconButton(onPressed: (){}, icon: Icon(Icons.login)),
          Container(
            height: 300,
            width: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.greenAccent, border: Border.all(color: Colors.red, width: 5,), borderRadius: BorderRadius.all(Radius.circular(20)),gradient: LinearGradient(colors: [Colors.green, Colors.greenAccent]),),
            child: Text("Welcome Container"),
          ),
        ],),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 9, 106, 96), 
        foregroundColor: Colors.white,
        hoverColor: Colors.tealAccent,

        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        tooltip: "Add",

        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }

}


