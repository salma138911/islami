import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home/hadeth/haadeth_tab.dart';
import 'package:untitled/home/quran/quran_tab.dart';
import 'package:untitled/home/radio/radio_tab.dart';
import 'package:untitled/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/main_background.png'),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlySelectedIndex){
            setState(() {
              selectedIndex=newlySelectedIndex;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:const ImageIcon(
              AssetImage('assets/images/icon_quran.png')
            ),label:'Quran'),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
                icon:const ImageIcon(
                AssetImage('assets/images/icon_hadeth.png')
            ),label:'Hadeth'),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
                icon:const ImageIcon(
                AssetImage('assets/images/icon_sebha.png')
            ),label:'Sebha'),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                AssetImage('assets/images/icon_radio.png')
            ),label:'Radio'),

    ]),
        body:tabs[selectedIndex]
        ),
    );
  }
  List<Widget>tabs=[QuranTab(),HadethTab(),TasbehTab(),RadioTab()];
}
