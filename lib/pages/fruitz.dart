import 'package:flutter/material.dart';
class Fruitz extends StatefulWidget {
  @override
  _FruitzState createState() => _FruitzState();
}

class _FruitzState extends State<Fruitz> {
  var images=["https://post.healthline.com/wp-content/uploads/2020/01/kiwi-fruit-732x549-thumbnail.jpg",
    "https://www.laijau.com/wp-content/uploads/2020/04/Avocado.jpg",
    "https://www.treehugger.com/thmb/LCZZvoW77dy039qLAgRXxe1Jtng=/889x667/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2018__06__cut_watermelon-527e7c70d4dd41ef9d766d3f6ac9559d.jpg",
    "https://bh.goodtaste.com/media/cache/48/6a/486aa9a07a14e0da1612b69f34e634f4.jpg",
    "https://www.healthifyme.com/blog/wp-content/uploads/2020/02/pears-coveer-1.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9YqOl-InS5DtaV8OIy08Q0Zhgngy5gMTODw&usqp=CAU",
    "https://cdn-b.medlife.com/2019/02/grapes-health-benefits.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKnB0FM8ZLeU7jqA8O_pAnIEargDaTYm_FvQ&usqp=CAU",
    "https://www.carecreations.basf.com/images/default-source/landingpages/the-rambutan-program/stage.jpg?sfvrsn=b6cbcb60_2",
    "https://i.pinimg.com/originals/84/ed/cd/84edcdf797619f74d8eac9868e11808e.jpg"];
  var names=["Kiwi","Avacado","Watermelon","Green Apple","Pear","Plums","Grapes","Pineapple","Rambutan","Guava"];
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 20.0),
          child:GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context,index){
                return Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 200,

                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(images[index]))
                        ),


                      ),

                      Container(
                          width: 160,
                          decoration: BoxDecoration(
                              gradient: LinearGradient( begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xffA770EF),Color(0xffCF8BF3),Color(0xfffdb99b)])
                          ),
                          child: Center(child: Text(names[index])))
                    ],
                  ),
                );
              }) ,
















        );
  }
}
