# Flutter Triangle

This project is a conversion of this project written in Javascript to Dart.
I've redefined the relevant classes to fit Dart characteristics, but I'm entirely following the design of this project.
https://github.com/hosein2398/Triangles

![sample](https://github.com/overload-dev/flutter_triangles/assets/47176449/cc7b7852-9ca0-4424-9470-232f12d95f99)



## Usage

+ It must be called as a parameter of CustomPainter.
+ Call the class like this on the screen you want to use:
```Dart
CustomPaint(
  painter: TrianglePainter(),
  child: Container(),
)
```

## Effects
Currently there are 6 effects available to use. You can only pass in the number of effect you want to use like so:
```Dart 
TrianglePainter(effect: 4);
```   
