# txt

Avoid Text boiler plate with this awesome library full of helper constructors to create styled text easily.

## Getting Started

Include the package at your source code 
```import 'package:easytext/easytext.dart```

### then  
This  
```Text("Hello World!!", style: TextStyle(fontWeight: FontWeight.bold))```  
became  
```Txt("Hello World!!", weight: FontWeight.bold)```  
or  
```Text.b("Hello World!!")```  
  
And this  
```Text("Hello World!!", style: TextStyle(fontStyle: FontStyle.italic));```  
became  
```Txt("Hello World!!", italic: true);```  
or  
```Text.i("Hello World!!");```  
  
And also this  
```Text("Hello World!!", style: TextStyle(color: Colors.red, fontSize: 22))```  
became  
```Text("Hello World!!", size: 22, color: Colors.red)```  
or  
```Text.sc("Hello World!!,22, Colors.red)```  
  
Want to change just the color? Use this ```Text.c("Hello World!!,Colors.red)```  
or just the size? Try ```Text.s("Hello World!!,22)```.

## You can also work with themes

Where this  
```Text("Hello World!!", style: Theme.of(context).textTheme.headline)```  
became  
```Txt.headline("Hello World!!")```  
Same for all other themes.

