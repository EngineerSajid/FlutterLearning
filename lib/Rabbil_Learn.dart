import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context){

    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar --> Action, title, backgroundColor, elevation, shape
      appBar: AppBar(
        title: Text("Explorer Motivation"),
        titleSpacing: 10,  // this keep 0 when title element center
        // centerTitle: true,
        toolbarHeight: 60, // default 60 almost
        toolbarOpacity: 1,
        elevation: 5,
        backgroundColor: Colors.green,
        actions: [IconButton(onPressed: (){MySnackBar("comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("email", context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar("settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("search", context);}, icon: Icon(Icons.search)),
        ],



      ),
      // appBar: AppBar(title: Text("My App"),),
      // body: Text("Hello"),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: (),
      // floatingActionButton: (),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (){
          MySnackBar("Floating Action Button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],

        onTap: (int index){
          if(index == 0){
            MySnackBar("Home bottom menu", context);
          }else if (index == 1){
            MySnackBar("Contact bottom menu", context);
          }else{
            MySnackBar("Profile bottom menu", context);
          }
        },
      ),

      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.indigo),
                    accountName: Text("Explorer Motivation", style: TextStyle(color: Colors.white)),
                    accountEmail: Text("info@developersajid.net", style: TextStyle(color: Colors.white)),
                    currentAccountPicture: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
                    onDetailsPressed: (){MySnackBar("This is profile section", context);},

                  )

              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){MySnackBar("Home", context);

                  }),
              ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: (){MySnackBar("Contact", context);

                  }),
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){MySnackBar("Profile", context);

                  }),
              ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: (){MySnackBar("Email", context);

                  }),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: (){MySnackBar("Phone", context);

                  }),

            ],

          )
      ),
      endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.indigo),
                    accountName: Text("Explorer Motivation", style: TextStyle(color: Colors.white)),
                    accountEmail: Text("info@developersajid.net", style: TextStyle(color: Colors.white)),
                    currentAccountPicture: Image.network("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
                    onDetailsPressed: (){MySnackBar("This is profile section", context);},

                  )

              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){MySnackBar("Home", context);

                  }),
              ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: (){MySnackBar("Contact", context);

                  }),
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){MySnackBar("Profile", context);

                  }),
              ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: (){MySnackBar("Email", context);

                  }),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: (){MySnackBar("Phone", context);

                  }),

            ],

          )
      ),

      body: Center(
        child: Text("Hello Flutter"),
      ),




    );
  }
}

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  MyMessage(messages, contxt){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        title: Text("Explorer Motivation"),
        titleSpacing: 10,

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),

        ],

      ),
    );
  }
}
