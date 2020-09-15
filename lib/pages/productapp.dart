import 'package:flutter/material.dart';
class Prod extends StatefulWidget {
  @override
  _ProdState createState() => _ProdState();
}

class _ProdState extends State<Prod> {
  TextEditingController name=TextEditingController();
  TextEditingController categ=TextEditingController();
  TextEditingController price=TextEditingController();
  var prodnames=[];
  var cat=[];
  var pri=[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20.0,top: 40.0,right: 20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
                  ),
                  child:   TextField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Enter Product Name",
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
                  ),
                  child: TextField(
                    controller: categ,
                    decoration: InputDecoration(
                        hintText: "Enter Category",
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
                  ),
                  child: TextField(
                    controller: price,
                    decoration: InputDecoration(
                        hintText: "Enter Price",
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        prodnames.add(name.text);
                        cat.add(categ.text);
                        pri.add(price.text);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)]),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      height: 50,
                      width: 100,

                      child: Center(child: Text("ADD")),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: prodnames.length==null?0:prodnames.length,
                    itemBuilder: (context,index){
                      return Card(
                        color: Color(0xffCF8BF3),
                        child: ListTile(
                          leading: Icon(Icons.library_books),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  prodnames.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete)),
                          title: Text("Product :"+prodnames[index],style: TextStyle(
                              color: Colors.black
                          ),),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Category :"+cat[index],style: TextStyle(
                                  color: Colors.green
                              ),),
                              Text("Price :"+pri[index],style: TextStyle(
                                  color: Colors.green
                              )),

                            ],
                          ),

                        ),
                      );
                    })

              ],
            ),
          ),
        );

  }
}
