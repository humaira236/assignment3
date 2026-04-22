import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_63c/converter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Homepage", style: TextStyle(color: Colors.amber)),
        // leading: Icon(Icons.home, color: Colors.green),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Hello 63C",
                style: GoogleFonts.lobster(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text("Welcome to the homepage"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ConverterPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    fixedSize: Size(120, 50),
                  ),
                  child: Text("Converter Page"),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.blueGrey, width: 2),
                  ),
                  child: Text("TextButton"),
                ),
                OutlinedButton(onPressed: () {}, child: Text("Outlined")),
                IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              ],
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(color: Colors.cyan, child: Text("Card")),
            ),
            Container(
              height: 300,
              width: 400,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(width: 5, color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              // child: Image.asset("assets/images/flutter.png"),
            ),
        
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                elevation: 500,
                side: BorderSide(color: Colors.black),
                shadowColor: Colors.brown,
                fixedSize: Size(100, 10),
              ),
              child: Text("Upolad"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
