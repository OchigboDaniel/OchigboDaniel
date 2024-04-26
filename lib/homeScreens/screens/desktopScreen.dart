import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/homeScreens/constant/projects.dart';
import 'package:my_resume/homeScreens/widgets/images/image.dart';
import 'package:my_resume/homeScreens/widgets/images/socials.dart';
import 'package:my_resume/homeScreens/widgets/images/toolImage.dart';

import 'package:provider/provider.dart';

import '../Theme/constant.dart';

import '../Theme/theme_manager.dart';
import '../constant/sizeBox.dart';
import 'constant/text.dart';


class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 400,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("I'm", style: theme.textTheme.subtitle2,),
                                Text("Daniel Ochigbo", style: theme.textTheme.headline2,),
                                Divider(
                                  endIndent: 500,
                                ),
                                Text(AppText.textIntro,
                                    overflow: TextOverflow.ellipsis, maxLines: 10,
                                    style: theme.textTheme.bodyText2 ),


                                VerticalSpace(5),
                                SizedBox(
                                    child: ToolImage()
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(child: MyImage(theme: theme, width: 450, height: 280,)),

                        Expanded(
                          child: SizedBox(
                            width: 300,
                            child:
                            Column(
                                children: [
                                  VerticalSpace(30),
                                  RichText(
                                    textAlign: TextAlign.right,
                                    text: TextSpan(
                                        text: 'Tools\n',

                                        style: GoogleFonts.roboto(
                                            
                                            fontSize: 14,
                                            fontWeight:  FontWeight.w700,
                                            decoration: TextDecoration.underline),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: AppText.skills,
                                              style: theme.textTheme.bodyText2
                                          ),

                                          TextSpan(
                                            text: 'Technical Skill\n',
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight:  FontWeight.w700,
                                                decoration: TextDecoration.underline),
                                          ),

                                          TextSpan(
                                              text: AppText.skills2,
                                              style: theme.textTheme.bodyText2
                                          ),
                                        ]
                                    ),
                                  ),

                                  Sociails()
                                ]
                            ),
                          ),
                        ),
                      ]))),

          VerticalSpace(20),

          Container(
              height: 250,
              width: double.infinity,
              child: Center(
                  child: Projects( theme: theme.textTheme.subtitle2)))

        ],
      ),
    );
  }
}
