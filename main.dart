import 'package:flutter/material.dart';
import 'package:flutter_project/ProfilePage.dart';
import 'package:flutter_project/SplashPage.dart';
import 'package:flutter_project/ui.dart';

//-------------------------------------------------------------
void main() {
  runApp(const MyApp());
}

int i = 0;
var arrData = [
  {'name': 'innocent molestor', 'age': 19, 'no': 2},
  {'name': 'milf explore', 'age': 19, 'no': 1},
  {'name': 'bauni gangstar', 'age': 10, 'no': 10},
  {'name': 'ganja kumar', 'age': 25, 'no': 5},
  {'name': 'boobie blaster', 'age': 28, 'no': 67},
  {'name': 'virgin killer', 'age': 30, 'no': 89},
  {'name': 'innocent molestor', 'age': 19, 'no': 2},
  {'name': 'milf explore', 'age': 19, 'no': 1},
  {'name': 'bauni gangstar', 'age': 10, 'no': 10},
  {'name': 'ganja kumar', 'age': 25, 'no': 5},
  {'name': 'boobie blaster', 'age': 28, 'no': 67},
  {'name': 'virgin killer', 'age': 30, 'no': 89},
  {'name': 'innocent molestor', 'age': 19, 'no': 2},
  {'name': 'milf explore', 'age': 19, 'no': 1},
  {'name': 'bauni gangstar', 'age': 10, 'no': 10},
  {'name': 'ganja kumar', 'age': 25, 'no': 5},
  {'name': 'boobie blaster', 'age': 28, 'no': 67},
  {'name': 'virgin killer', 'age': 30, 'no': 89},
  {'name': 'innocent molestor', 'age': 19, 'no': 2},
  {'name': 'milf explore', 'age': 19, 'no': 1},
  {'name': 'bauni gangstar', 'age': 10, 'no': 10},
  {'name': 'ganja kumar', 'age': 25, 'no': 5},
  {'name': 'boobie blaster', 'age': 28, 'no': 67},
  {'name': 'virgin killer', 'age': 30, 'no': 89},
  {'name': 'innocent molestor', 'age': 19, 'no': 2},
  {'name': 'milf explore', 'age': 19, 'no': 1},
  {'name': 'bauni gangstar', 'age': 10, 'no': 10},
  {'name': 'ganja kumar', 'age': 25, 'no': 5},
  {'name': 'boobie blaster', 'age': 28, 'no': 67},
  {'name': 'virgin killer', 'age': 30, 'no': 89},
];
List<String> arrN = [
  'ask',
  'tell',
  'shout',
  'stand',
  'for',
  'there',
  'where',
  'ask',
  'tell',
  'shout',
  'stand',
  'for',
  'there',
  'where',
  'ask',
  'tell',
  'shout',
  'stand',
  'for',
  'there',
  'where',
];
var Arrcolors = [
  Colors.amber,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.pink,
  Colors.purple,
  Colors.grey,
  Colors.blueAccent,
  Colors.indigoAccent,
  Colors.deepOrange,
  Colors.orangeAccent,
  Colors.indigo,
  Colors.lightBlue,
];
var username = TextEditingController();
var userpass = TextEditingController();
bool ishiden = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.normal,
            fontFamily: 'fontMain',
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.black,
          ),
        ),
      ),
      home: Splashpage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController name = TextEditingController();
  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  String Username = '';
  void _greet() {
    setState(() {
      Username = name.text;
      print(Username);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
           children: [
            Text('button ',style: mtextfunc(),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffa18cd1),
               Color(0xff8fd3f4)]
                ),
                borderRadius: BorderRadius.circular(21)
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> ProfilePage(name.text.toString())));
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                child: Text('click',style: mtextfunc(),)
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 500,
              child: TextField(
                controller: name,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xffa18cd1),
               Color(0xff8fd3f4)]),
               borderRadius: BorderRadius.circular(21),
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> ProfilePage(name.text.toString())));
                },
                child: Text(
                  'send',style: mtextfunc(),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),),
            )
           ],
        ),
      )
    );
  }
}

/*
---------------------------------------------------------------------------------------------------------
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
    print('hello');
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
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              //color: Colors.amber,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(21),
                border: Border.all(
                  color: Colors.black,
                  width: 2
                )
              )
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Icon(
                Icons.add,
                color: Colors.black,
              )
            ),
            Positioned(
              left: 7,
              bottom: 7,
              child: Text(
                'ladak',style: mtextfunc(),
              )
            ),
            Positioned(
              right: 7,
              bottom: 7,
              child: Icon(
                Icons.abc_sharp,
                color: Colors.black,
              ))
          ],
        ),
      )
      
      );  
  }
}
class itemwidgeti extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
        flex: 2,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,
             //   childAspectRatio: 0,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5), 
          itemBuilder: (context,index){
            return Container(
              width: 10,
              height: 10,
              color: Arrcolors[index],
            );
          },
          itemCount: Arrcolors.length,
          ),
      );
  }
}
class itemwidget2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
           // borderRadius:BorderRadius.circular(21),
            decoration: BoxDecoration(
              color: Color.fromARGB(97, 100, 92, 92),
              borderRadius: BorderRadius.circular(21),
              border: Border.all(
                color: const Color.fromARGB(255, 99, 97, 97),
                width: 3.2
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
               // mainAxisExtent: 5,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.teal,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.redAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.blueAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.greenAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.lightGreen,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.pinkAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.blueGrey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.purpleAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.deepPurpleAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.lightGreen,),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


class ItemWidget3 extends StatefulWidget {
  const ItemWidget3({super.key});

  @override
  State<ItemWidget3> createState() => _ItemWidget3State();
}

class _ItemWidget3State extends State<ItemWidget3> {

  TextEditingController username = TextEditingController();
  TextEditingController userpass = TextEditingController();

  bool ishiden = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'enter username',
                  suffixIcon: Icon(Icons.person),
      
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 32, 138),
                    ),
                  ),
      
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
      
              SizedBox(height: 10),
      
              TextField(
                controller: userpass,
                keyboardType: TextInputType.number,
                obscureText: ishiden,
                obscuringCharacter: '*',
      
                decoration: InputDecoration(
                  hintText: 'password',
      
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        ishiden = !ishiden;
                      });
                    },
                    icon: Icon(
                      ishiden
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
      
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 32, 138),
                    ),
                  ),
      
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
      
              SizedBox(height: 10),
      
              ElevatedButton(
                onPressed: () {
                  String name = username.text;
                  String pass = userpass.text;
      
                  print('user name is $name');
                  print('user password is $pass');
                },
                child: Text('click'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    username.dispose();
    userpass.dispose();
    super.dispose();
  }
}

------------------------------------------------------------------------------------------------
body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'enter username',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 32, 138)
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                height:  10,
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: userpass,
                  obscureText: ishiden,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    //obscureText : valobscure,
                    hintText: 'password',
                    suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          ishiden =! ishiden;
                        });
                      }, icon: Icon(
                        ishiden? Icons.visibility
                        :Icons.visibility_off
                      ),),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 32, 138)
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              Container(
                child: ElevatedButton(onPressed: (){
                  String name = username.text.toString();
                  String pass = userpass.text.toString();
                  print('user name is $name');
                  print('user password is $pass');
                }
                , child: Text('click',style: mtextfunc(),),),
              )
            ],
          ),
        ),
      )
-------------------------------------------------------------------------------------------
body: Center(
       // mainAxisAlignment:MainAxisAlignment.center
        child: SizedBox(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'current date : ${DateFormat('yMMMMEEEEd').format(time)}  \ntime : ${DateFormat('jms').format(time)}',
                  style: mtextfunc(),
                ),
              ),
              Container(
                width: 10,
                height: 10,
              ),
              ElevatedButton(
                  onPressed:(){
                    setState(() {
                       time = DateTime.now();
                    });
                  } ,
                 child: Text(
                  'refrese',style: mtextfunc(),
              )),
              Container(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? d = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1920), 
                    lastDate: DateTime(2030),
                  );
                  if(d!=null){
                    print('time ${DateFormat('yMMMMEEEEd').format(d)}');
                  }
                }, child:Text('click me',style: mtextfunc(),)
              ),
              Container(height: 10),
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? d = await showTimePicker(
                    context: context, 
                    initialTime: TimeOfDay.now());
                  initialEntryMode:TimePickerEntryMode.dial;
                },
                child:Text('select time',style: mtextfunc())
              ),
            ],
          ),
        ),
      ),
---------------------------------------------------------------------------------------------------
Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
         // borderRadius:BorderRadius.circular(21),
          decoration: BoxDecoration(
            color: Color.fromARGB(97, 100, 92, 92),
            borderRadius: BorderRadius.circular(21),
            border: Border.all(
              color: const Color.fromARGB(255, 99, 97, 97),
              width: 3.2
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
             // mainAxisExtent: 5,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.teal,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.redAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blueAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.greenAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.lightGreen,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.pinkAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blueGrey,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.purpleAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.deepPurpleAccent,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.lightGreen,),
                ),
              ],
            ),
          ),
        ),
      ),
*/
