import 'package:first_demo_by_vs/Screens/home_screen.dart';
import 'package:first_demo_by_vs/Screens/news.dart';
import 'package:first_demo_by_vs/Screens/profile.dart';
import 'package:first_demo_by_vs/Screens/second_screen.dart';
import 'package:first_demo_by_vs/Screens/setting.dart';
import 'package:first_demo_by_vs/Utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myThemeData,//ThemeData.dark(),
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => Profile(),
        '/news': (context) => News(),
        '/settings': (context) => Settings("hello"),
      },
      // Scaffold(
      //   drawer: _renderMenu(),
      //   appBar: _renderApp(),
      //   body: _renderListView()
      // ),
    ); 
  }
  Widget _renderMenu(){
return Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("item1"),
                onTap: ()
                {
                  print("item1 clicked");
                  },
              ),
              ListTile(
                title: Text("item2"),
                  onTap: ()
                  {
                    print("item2 clicked");
                    },
              ),
              ListTile(
                title: Text("item3"),
                  onTap: ()
                  {
                    print("item3 clicked");
                    },
              ),
              ListTile(
                title: Text("item4"),
                  onTap: (){
                    print("item4 clicked");
                    },
              ),
              ListTile(
                title: Text("item5"),
                  onTap: (){
                    print("item5 clicked");
                    },
              ),
              ListTile(
                title: Text("item6"),
                  onTap: (){
                    print("item6 clicked");
                    },
              ),
              ListTile(
                title: Text("item7"),
                  onTap: (){
                    print("item6 clicked");
                    },
              )
            ],
          ),
        );
}
  Widget _renderApp(){
   return AppBar(
         title: Text("App title"),
         centerTitle: true);
 }
  Widget _renderListView(){
  return 
  ListView.builder(itemBuilder: (BuildContext context, int i) {
     if(i<40)
     {
 return ListTile(
   onTap: (){
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen(i.toString())),
  );
   },
   subtitle: Text("Bassuni"),
   trailing: Icon(Icons.face),
    leading: CircleAvatar(
      child: FlutterLogo(
        size: 30,
        colors: Colors.red ,
      )
    ),
      title: Text("Mahmoud"),
      
     );
     }
    
    
  },);
  // ListView(
  //         children: <Widget>[
  //           ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //            ),
  //           ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           }
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //            ),
  //           ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }
  //            ),
  //           ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header1"),
  //           onTap: (){
  //             print("header1 clicked");
  //           },
  //           ),
  //            ListTile(
  //           title: Text("header2"),
  //           onTap: (){
  //             print("header2 clicked");
  //           }

  //           )
  //         ],
  //       );
        }
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'welcome to flutter by bassuni'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}