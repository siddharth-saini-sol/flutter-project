import 'package:flutter/material.dart';


//-------------------------------------------------------------
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    dynamic arrN = ['ask','tell','shout','stand','for','there','where','ask','tell','shout','stand','for','there','where','ask','tell','shout','stand','for','there','where'];
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor:Colors.green,
          backgroundImage: AssetImage('assets/images/vecteezy_geometric-shape-gradient-purple-background-abstract-modern_46984606.jpg'),
        ),
      ),
    );
  }
}
/*
      body:ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrN[index])
         );
      }, 
      separatorBuilder: (context,index){
        return Divider(thickness: 5);
      },
      itemCount: arrN.length),
         
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: 
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30,left: 125),
                  child: Text(
                    'box 1',
                    style: TextStyle(
                      fontSize:25,
                      color: Colors.white
                    ),
                  ),
                ),
              )
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Padding(padding: 
                  EdgeInsetsGeometry.only(top: 30,left: 125),
                  child: Text(
                    'box 2',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),
                  ),),
                )),
              Expanded(
                child: 
              Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.deepOrangeAccent,
                child: Padding(padding: 
                EdgeInsetsGeometry.only(top: 30,left: 125),
                child: Text(
                  'box 3',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),),
              
              ),
              ),
              Expanded(child: 
              Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.lightGreenAccent,
                child: Padding(padding: 
                EdgeInsetsGeometry.only(top: 30,left: 125),
                child: Text(
                  'box 4',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),),
              ))
            ],
          ),
        ),
      )
    );
  }
}
      
      body: ListView.separated(itemBuilder: (context,index){
        return Text(arrN[index],style:TextStyle(fontSize: 100));
      }, 
      separatorBuilder: (context,index){
        return Divider(height: 10,thickness: 10);
      },
      itemCount: arrN.length
      ),
      
      body: ListView.builder(itemBuilder: (context,Index){
        return Text(arrN[Index],style: TextStyle(fontSize: 100,fontWeight: FontWeight.w700),);
      },
      itemCount: arrN.length,
      scrollDirection: Axis.vertical,
      ),
      body: ListView(
        children:[
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('A',style: TextStyle(fontSize: 100))),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('B',style: TextStyle(fontSize: 100),),),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('C',style: TextStyle(fontSize: 100),),),
        ],
        scrollDirection: Axis.horizontal,
      )
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView()
              Row(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(100, 100, 100, 100),
              ),
            ]),
            Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(99, 245, 139, 0),
              ),
              Container(
                width: 300,
                height: 300,
                color: Color.fromARGB(99, 245, 139, 0),
              ),
            ],
          ),
        ),
      ),
      body : Center(
        child: InkWell(
          onTap:(){
              print('on tap container');
          },
          onLongPress: () => print('long pressed container '),
          onDoubleTap: ()=> print('on double pressed container '),
          child: Container(
            width: 150,
            height: 150,
            color: Color.fromRGBO(0, 238, 255, 0.565),
            child: Center(child: InkWell(
              onTap:() => print('on tap text'),
              onDoubleTap: ()=> print('on double pressed text'),
              onLongPress: ()=> print('on longest press text'),
              child: Text("hello click",style: TextStyle(fontSize: 10)),
            )
            ),
          ),
        ),
      )
      body: Container(
        height: 300,
        width: 300,
        child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Image.asset('vecteezy_geometric-shape-gradient-purple-background-abstract-modern_46984606.jpg'),
                Text('B',style: TextStyle(fontSize: 50)),
                OutlinedButton(onPressed: (){}, child: Text('click me'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Image.asset('vecteezy_geometric-shape-gradient-purple-background-abstract-modern_46984606.jpg'),
                Text('D',style: TextStyle(fontSize: 50)),
                OutlinedButton(onPressed: (){}, child: Text('click me'))
              ],
            ),
          ],
        )
      )
  }
}
//----    );-----------------------------------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myFlutterApp',
      theme: ThemeData(
        colorScheme:  .fromSeed(seedColor: Colors.tealAccent),
      ),
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter app'),
        backgroundColor: Colors.cyan
      ),
      body: Container(
        color:  Colors.redAccent,
        //child: Text('hello')
      ),
    );
  }
/*