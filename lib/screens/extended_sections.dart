import 'package:flutter/material.dart';
import 'exercise_web.dart';

class ExtendedSections extends StatelessWidget {


// List<String> podstawa = [
//     'Liczby rzeczywiste',
//     'Funkcja liniowa',
//     'Funkcja kwadratowa',
//     'Wielomiany',
//     'Funkcje wymierne',
//     'Funkcje wykładnicze i logarytmiczne',
//     'Trygonometria',
//     'Ciągi',
//     'Kombinatoryka, rachunek prawdopodobienstwa, statystyka',
//     'Planimetria',
//     'Geometria analityczna',
//     'Stereometria',
//     'Dowody algebraiczne',
//     'Dowody geometryczne'
//   ];
  List<String> sectionItems = [
    'Liczby rzeczywiste',
    'Funkcja liniowa',
    'Funkcja kwadratowa',
    'Wielomiany',
    'Funkcje wymierne',
    'Funkcje wykładnicze i logarytmiczne',
    'Trygonometria',
    'Ciągi',
    'Kombinatoryka, rachunek prawdopodobienstwa, statystyka',
    'Planimetria',
    'Geometria analityczna',
    'Stereometria',
    'Rachunek rózniczkowy',
    'Dowody algebraiczne',
    'Dowody geometryczne'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poziom rozszerzony'),
      ),
      body: Container(
        child: ListView.builder(
          
          itemCount: sectionItems.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 0,
              margin: EdgeInsets.all(2),
              child: Container(
                
                child: ListTile(
                  
                  leading: Container(
                    decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.black, width:0.5))),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text((index+1).toString(), style: TextStyle(color: Colors.black),)
                    ),
                  ),
                  title: Text(sectionItems[index], style: TextStyle(fontSize: 16),),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExerciseWeb(section: sectionItems[index],)));
                  },
                ),
              ),
            );
          })
      ),
    );
  }
}