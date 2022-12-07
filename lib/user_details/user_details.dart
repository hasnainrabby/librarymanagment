import 'package:flutter/material.dart';
//User Details Route
class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 75,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(25) )
                ),
                  child: Text("User Details Menu",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center,) ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                     // topRight: Radius.circular(10)
                      ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your summary"),
                onTap: (){

                },
                
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your charges"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your personal details"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your tags"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Change your password"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your checkout history"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your purchase suggestion"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your messaging"),
                onTap: (){

                },

              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    // topRight: Radius.circular(10)
                  ),
                  side: BorderSide(width: 2, color: Colors.green)),
              child: ListTile(
                title: Text("Your lists"),
                onTap: (){

                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
