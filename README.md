# txt

Avoid Text boilerplate with this awesome library full of helper constructors to create styled text easily.

## Getting Started

Include the package at your source code 
```import 'package:easytext/easytext.dart```

### then  
This  
```Text("Hello World!!", style: TextStyle(fontWeight: FontWeight.bold))```  
became  
```Txt("Hello World!!", weight: FontWeight.bold)```  
or  
```Txt.b("Hello World!!")```  
  
And this  
```Text("Hello World!!", style: TextStyle(fontStyle: FontStyle.italic));```  
became  
```Txt("Hello World!!", italic: true);```  
or  
```Txt.i("Hello World!!");```  
  
And also this  
```Txt("Hello World!!", style: TextStyle(color: Colors.red, fontSize: 22))```  
became  
```Txt("Hello World!!", size: 22, color: Colors.red)```  
or  
```Txt.sc("Hello World!!",22, Colors.red)```  
  
Want to change just the color? Use this ```Txt.c("Hello World!!",Colors.red)```  
or just the size? Try ```Txt.s("Hello World!!",22)```.

## You can also work with themes

Where this  
```Txt("Hello World!!", style: Theme.of(context).textTheme.headline)```  
became  
```Txt.headline("Hello World!!")```  
Same for all other themes.

