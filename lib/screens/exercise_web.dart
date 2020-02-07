import 'package:flutter/material.dart';
import 'package:flutter_tex_example/screens/instruction.dart';
import 'package:flutter_tex_example/screens/prompt.dart';
import 'answer.dart';




class ExerciseWeb extends StatefulWidget {
  String section;
  ExerciseWeb({this.section});

  @override
  _ExerciseWebState createState() => _ExerciseWebState();
}

class _ExerciseWebState extends State<ExerciseWeb> {
  int selectedIndex = 0;
  
  
  List<Widget> widgets = [Instruction(url: instruction,),Answer(url: answer,),Prompt(url:prompt,)];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Zadanie 2.1'),
            Text(widget.section, style: TextStyle(fontSize: 14))
          ],
        ),
      ),
      body: Container(
        child: widgets[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Colors.green,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields), title: Text('Treść')),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), title: Text('Odpowiedź')),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), title: Text('Rozwiązanie')),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

String instruction = r"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>
  <style>
    body{
      margin:0 0;
      padding:0;
      font-family: 'Open Sans', sans-serif;
    }
    .container{
      margin: 2% 3%;
    }
    </style>

</head>
<body>
    <div class="container">
        <p>
        Dla jakich wartości parametru \(m\in\mathbb{R}\) równanie: \((m^2-1)x^2-(m+1)x-4=0\) ma dwa różne rozwiązania przeciwnych znaków, którch suma kwadratów jest większa od \(\frac{4}{-3m^2+3}\)?
        </p>
        </div>
        
</body>
</html>""";
String answer = r"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js">
  
</script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
<style>
    body{
      margin:0;
      padding:0;
      font-family: 'Open Sans', sans-serif;
    }
    .container{
      margin: 2% 3%;
    }
  </style>
</head>
<body>
    <div class="container">
        <p>
          Brak parametrów \(m \in \mathbb{R}\) spełniających warunki zadania.
        </p>
        </div>
</body>
</html>
""";
String prompt = r"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script type="text/javascript" id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js">
  
</script>
<style>
  body{
    margin:0;
    padding:0;
    font-family: 'Open Sans', sans-serif;
  }
  .container{
      margin: 2% 3%;
    }
  .tip{
    background-color:#c4dc6e;
    border: 2px solid #4caf50;
    border-radius:10px;
    padding:10px;
  }

</style>
</head>
<body>
 
  <div class="container">
    <p>
    Zauważmy, że w treści zadania wymagamy dwóch róznych rozwiązań, zatem przypadek równania liniowego nie zachodzi, ponieawż nie może ono mieć dwóch różnych rozwiązań.
    </p>
    <div class="tip">
      
      W zadaniu z funkcji kwadratowej z parametrem zawsze należy przeanalizować dwa przypadki - równania liniowego i kwadratowego
      
    </div>
    <p>
    Pozostał nam zatem tylko przypadek równania kwadratowego. Musimy ułożyć listę warunków, które musi spełniać zadane równanie. Aby równanie było kwadratowe, to musimy użyć warunku: \(a \neq 0\). Ponadto, aby istniały dwa różne rozwiązania, to jego wyróżnik musy być dodatni tzn: \(Delta >0\). Aby uzyskać rozwiązania przeciwnych znaków, to zauważmy, że albo \(x_1>0 \wedge x_2<0\) lub \(x_1<0 \wedge x_2>0\). Zauważmy, że jeżeli mamy dwie liczby różnych znaków, to fakt ten jest równoważny stwierdzeniu, że ich iloczyn jest liczbą ujemną tzn. \(x_1 \cdot x_2 <0\). Dzięki temu warunek ten możemy zapisać w postaci wzoru Viete'a tzn \(\frac{c}{a}<0\). 
    </p>
    <div class="tip">
      
      W warunkach tego typu przeważnie staramy się wymyślić warunek równoważny, który da się przedstawić w postaci wzorów Viete'a, na których obliczenia są zniacznie szybsze
      
    </div>
    <p>
    Aby zapisać ostatni warunek potrzebujemy wzoru Viete'a na sumę kwadratów pierwiastków. Wyprowadźmy ten wzór.
    </p>
    <p>\(x_1^2+x_2^2=(x_1+x_2)^2-2x_1x_2=(-\frac{b}{a})^2-2\frac{c}{a}=\frac{b^2}{a^2}-\frac{2c}{a}=\frac{b^2-2ac}{a^2}\).
  </p>
  <div class="tip">
      
      Wyprowadzenia tych wzorów wypada umieć, z tego względu, że w karcie wzorów są tylko dwa podstawowe wzory Viete'a.
      
    </div>
  <p>Podsumowując na podstawie powyższych rozważań oraz założeń zadania otrzymujemy warunki:</p>
  <ol>
    <li>\(a\neq 0\)</li>
    <li>\(\Delta >0\)</li>
    <li>\(\frac{c}{a}<0\)</li>
    <li>\(\frac{b^2-2ac}{a^2}<4\).</li>
  </ol>
  <ol>

    <li>\(m^2-1> \neq 0\)</li>
    <p>\((m-1)(m+1) \neq 0\)</p>
    <p>\(m-1 \neq 0 \wedge m+1 \neq 0\)</p>
    <p>\(m \neq 1 \wedge m \neq -1\)</p>

    <li>\(\Delta >0\)</li>
    <p>\(\Delta=(-m-1)^2-4\cdot 4(m^2-1)=m^2+2m+1-16(m^2-1)=m^2+2m+1-16m^2+16=-15m^2+2m+17\)</p>
    <p>\(\Delta>0\)</p>
    <p>\(-15m^2+2m+17>0\)</p>
    <p>\(\Delta_m=4+4*15*17=4+1020=10240\)</p>
    <p>\(\sqrt{\Delta_m}=32\)</p>
    <p>\(m_1=\frac{-2-32}{-30}=\frac{-34}{-30}=\frac{17}{15}\)</p>
    <p>\(m_2=\frac{-2+32}{-30}=-1\)</p>
    <p>Wykres:</p>
    <p>\(m\in (-1, \frac{17}{15})\)</p>

    <li>\(\frac{c}{a}<0\)</li>
    <p>\(\frac{-4}{m^2-1}<0 \backslash \cdot (m^2-1)^2\)</p>
    <div class="tip">
     
        Zauważmy, że musimy pomnożyć przez kwadrat mianownika, ponieważ przyjmuje on wartości zarówno dodatnie jak i ujemne.
      
    </div>
    <p>\(-4(m^2-1)<0\)</p>
    <p>\(-4(m-1)(m+1)<0\)</p>
    <p>Wykres:</p>
    <p>\(m\ \in (-\infty,-1)\cup (1, \infty )\)</p>

    <li>\(\frac{b^2-2ac}{a^2}<\frac{4}{-3m^2+3}\)</li>
    <p>\(\frac{(m+1)^2+8(m^2-1)}{(m^2-1)^2}<\frac{4}{-3m^2+3}\)</p>
    <div class="tip">
      
        Nie musimy mnożyć przez kwadrat mianownika bo jest on zawsze dodatni.
      
    </div>
    <p>Po pomnożeniu przez mianownik i przeniesieniu na lewą stronę otrzymujemy</p>
    <p>\((m+1)^2+8(m^2-1)+\frac{4(m^2-1)}{3}<0\)</p>
    <p>Po rozwiązaniu nierówności kwadratowej otrzymujemy:</p>
    <p>\(m \in (-1, \frac{25}{31})\).</p>
    <p>Finalnie bierzemy częśc wspólną wszystkich czterech warunków i otrzymujemy, że nie istnieją parametry spełniające warunki zadania, ponieawż częśc wspólna wszystkich warunków jest zbiorem pustym.</p>
  </ol>
  </div>
</body>
</html>
""";