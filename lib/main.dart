import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Image"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageInternet_FitNon(),
                ImageInternet_FitContain(),
                ImageInternet_FitFill(),
                ImageInternet_FitContain_Repeat(),
                ImageAssets(),
              ],
            ),
          )),
    );
  }
}

class ImageAssets extends StatelessWidget {
  const ImageAssets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.red,
      width: 130,
      height: 130,
      padding: EdgeInsets.all(5),
      child: Image(
        image: AssetImage(
            "images/example.jpg"
        ),
        fit: BoxFit.contain,
        repeat: ImageRepeat.repeat,
      ),
    );
  }
}

class ImageInternet_FitContain_Repeat extends StatelessWidget {
  const ImageInternet_FitContain_Repeat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.red,
      width: 130,
      height: 130,
      padding: EdgeInsets.all(5),
      child: Image(
        image: NetworkImage(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
        ),
        fit: BoxFit.contain,
        repeat: ImageRepeat.repeat,
      ),
    );
  }
}

class ImageInternet_FitFill extends StatelessWidget {
  const ImageInternet_FitFill({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.red,
      width: 130,
      height: 130,
      padding: EdgeInsets.all(5),
      child: Image(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
          ),
          fit: BoxFit.fill
      ),
    );
  }
}

class ImageInternet_FitContain extends StatelessWidget {
  const ImageInternet_FitContain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.red,
      width: 130,
      height: 130,
      padding: EdgeInsets.all(5),
      child: Image(
        image: NetworkImage(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}

class ImageInternet_FitNon extends StatelessWidget {
  const ImageInternet_FitNon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.red,
      width: 130,
      height: 130,
      padding: EdgeInsets.all(5),
      child: Image(
        image: NetworkImage(
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
        ),
        fit: BoxFit.none,
      ),
    );
  }
}