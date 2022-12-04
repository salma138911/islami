import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/sura_details/sura_details_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routename='sura-details';
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    readFile(args.index+1);
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/main_background.png'),
    fit: BoxFit.fill,
    )
    ),
     child:Scaffold(
       appBar: AppBar(
         title: Text(args.name),
       ),
     ),
    );
  }
  void readFile(int fileIndex)async{
String fileContent=await rootBundle.loadString('assets/files/$fileIndex.txt');
List<String>lines=fileContent.split('\n');
print(lines.length);
  }
}
