import 'package:flutter/material.dart';

import '../../theme/themeColor.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key, required this.theme, required this.width, required this.height});
  final ThemeData theme;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {

    Color containerColor =  theme.brightness == Brightness.light ? LightColors.appBarColor :  DarkColors.appBarColor;
    Color containerSocials = theme.brightness == Brightness.light ? LightColors.scafoldColor : DarkColors.scafoldColor;

    String myImageUrl =  'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/image.png?alt=media&token=35971d17-0205-4842-8c81-ff37b1c23367';

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: FutureBuilder(
          future: precacheImage(
              NetworkImage(myImageUrl), context),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
            if (snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }else if (snapshot.hasError) {
              return Text('error loading image');
            }else{
              return Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: containerColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/image.png?alt=media&token=35971d17-0205-4842-8c81-ff37b1c23367'))
                ),
              );}}
      ),
    );;
  }
}
