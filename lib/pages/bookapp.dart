import 'package:flutter/material.dart';
class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  TextEditingController title=TextEditingController();
  TextEditingController desc=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController price=TextEditingController();
  var booknames=[];
  var descri=[];
  var aut=[];
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

                      controller: title,

                      decoration: InputDecoration(

                          hintText: "Enter Book Name",

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
                      controller: desc,
                      decoration: InputDecoration(
                          hintText: "Enter Book Description",

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

                      controller: author,

                      decoration: InputDecoration(

                          hintText: "Enter Author Name",

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
                    child:   TextField(

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
                          booknames.add(title.text);
                          descri.add(desc.text);
                          aut.add(author.text);
                          pri.add(price.text);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
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
                      itemCount: booknames.length==null?0:booknames.length,
                      itemBuilder: (context,index){
                        return Card(
//                            elevation: 30,
                          color: Color(0xffCF8BF3),
                          child: ListTile(
                            leading: Icon(Icons.library_books),
                            trailing: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    booknames.removeAt(index);
                                  });
                                },
                                child: Icon(Icons.delete)),
                            title: Text("Book :"+booknames[index],style: TextStyle(
                                color: Colors.green
                            ),),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description :"+descri[index],style: TextStyle(
                                    color: Colors.red
                                ),),
                                Text("Author :"+aut[index],style: TextStyle(
                                    color: Colors.red
                                )),
                                Text("Price :"+pri[index],style: TextStyle(
                                    color: Colors.red))

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
