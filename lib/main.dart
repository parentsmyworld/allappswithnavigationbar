import 'package:flutter/material.dart';
import 'package:flutter_allinnavigation/pages/bookapp.dart';
import 'package:flutter_allinnavigation/pages/fruitz.dart';
import 'package:flutter_allinnavigation/pages/productapp.dart';
import 'package:flutter_allinnavigation/pages/studentdetails.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pages=[Next(),Prod(),Fruitz(),Firzt()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
              ),
            ),
            title: Center(
                child: Text("APPS",
                  style: TextStyle(color: Colors.black),)),
          ),
          body: pages[_myindex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
            ),
            child: BottomNavigationBar(
                iconSize: 20,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.black,
                selectedFontSize: 15,
                unselectedFontSize: 10,
                elevation: 50,
                backgroundColor: Colors.transparent,
                currentIndex: _myindex,
                type: BottomNavigationBarType.fixed,
                onTap: (index){
                  setState(() {
                    _myindex=index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      title: Text("Books"),
                      icon: Icon(Icons.library_books)),
                  BottomNavigationBarItem(
                      title: Text("Products"),
                      icon: Icon(Icons.shopping_cart)),
                  BottomNavigationBarItem(
                      title: Text("Fruits"),
                      icon: Icon(Icons.cake)),
                  BottomNavigationBarItem(
                      title: Text("Details"),
                      icon: Icon(Icons.person_add)),

                ]),
          ),
        )
    );
  }
}
