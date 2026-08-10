import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/ui.dart';

class ProfilePage extends StatelessWidget{
  var nameX ;
  ProfilePage(this.nameX);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('profile page'),
        flexibleSpace:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffa18cd1),
               Color(0xff8fd3f4)
              ])
          ),
        )
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello world',style: mtextfunc(),),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xffa18cd1),
               Color(0xff8fd3f4)]),
              
              borderRadius:BorderRadius.circular(21)),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>MyHomePage(
                        title: 'home page',
                      ),
                    ),
                  );
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                child: Text('click me',style: mtextfunc(),
              )),
            ),
            SizedBox(height: 10,),
            Text('$nameX',style: mtextfunc(),),
          ],
        ),
      ),
    );
  }
}
/*
can you just check the sentence and suggest mistake in grammer and other things "so have you ever watch movie 2012 in which when the disaster happen on earth some peoples escape by the big ship and move to another planet , so have you ever things that in todays world if anything happens like that which groups are going to escape ,the elits not normal people like us , so what i m trying to say here we cana see companies and big tech and govt are vegariously playing with nature , peoples who live near the data center cant even get clean water because there water is using just to cool down machine , mountains and tree and forest are cutting down just so they can extract more resource and more data center and we think it is for us , we are just paying for the things , we are the vending machin which they use to get there money and when mother nature start teaching lesson the one that are going to suffer most is us , they are enjoying there life and breath clean air , drink pure water with there family , the war that are happeing the actual people who get suffer is normal recidential , not the govt setting on there bunkers , the war are happen because some top offical's and govt's policys not match with other's, remeber one thing they are not one we relies on , we are the one they are relies on for there resources "
*/