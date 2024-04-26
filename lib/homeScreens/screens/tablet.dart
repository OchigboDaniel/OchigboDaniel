import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/homeScreens/widgets/images/image.dart';
import 'package:my_resume/homeScreens/widgets/images/socials.dart';
import 'package:my_resume/homeScreens/widgets/images/toolImage.dart';

import 'package:provider/provider.dart';

import '../constant/sizeBox.dart';
import '../theme/constant.dart';
import '../theme/theme_manager.dart';
import 'constant/projects.dart';
import 'constant/text.dart';



class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          SizedBox(
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
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("I'm", style: theme.textTheme.subtitle2,),
                          Text("Daniel Ochigbo", style: theme.textTheme.headline2,),
                          const Divider(
                            endIndent: 200,
                          ),
                          const Text(
                              AppText.textIntro,
                              overflow: TextOverflow.ellipsis, maxLines: 15,
                              style: TextStyle() ),

                          VerticalSpace(10),

                          const ToolImage(),

                        ],
                      ),
                    ),
                  ),

                  Expanded(child: MyImage(theme: theme, width: 450, height: 280,)),

                ],
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(right: 80),
            child: Sociails(),
          ),

          SizedBox(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Tools\n',

                    style: GoogleFonts.roboto(
                        color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? Colors.black : Colors.white,
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
                        style: GoogleFonts.abrilFatface(
                            color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? Colors.black : Colors.white,
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
              )),

          VerticalSpace(20),

          SizedBox(
              height: 250,
              width: double.infinity,
              child: Center(
                  child: Projects(theme: theme.textTheme.subtitle2)))

        ],
      ),
    );
  }
}

