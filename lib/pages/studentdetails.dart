import 'package:flutter/material.dart';
class Firzt extends StatefulWidget {
  @override
  _FirztState createState() => _FirztState();
}

class _FirztState extends State<Firzt> {
  var names=["Manju","Agitta","Linsha","Anjali","Aishu","Amrutha","Gokul","Jithu","Deepak","Kiran"];
  var ph=["212xxxxxx0","23200054xx","897533xxxx","275784xxxx","xxxxxxx545","7646766xx4","64657346xx","878578xxx2","85784758xx","xxxx104346"];
  var email=["manju@gmail.com","agittagmail.com","linshagmail.com","anjaligmail.com","aishugmail.com","amruthagmail.com","gokulgmail.com","jithugmail.com","deepakgmail.com","kirangmail.com"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: names.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context,index){
          return Card(
            elevation: 10,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
color: Color(0xfffdb99b)
                ),
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(names[index],style: TextStyle(
                      color: Colors.blue
                  ),),
                  Text(ph[index],style: TextStyle(color: Colors.green),),



                  Text(email[index],style: TextStyle(color: Colors.red),)



                ],



              ),
            ),
          );
        });
  }
}
