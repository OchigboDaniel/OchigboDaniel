import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume/homeScreens/widgets/images/image.dart';
import 'package:my_resume/homeScreens/widgets/images/socials.dart';
import 'package:my_resume/homeScreens/widgets/images/toolImage.dart';
import 'package:my_resume/theme/constant.dart';
import 'package:my_resume/theme/theme_manager.dart';
import 'package:provider/provider.dart';

import '../constant/sizeBox.dart';
import 'constant/projects.dart';
import 'constant/text.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key, required this.theme});

  final ThemeData theme; // the theme helps to get the current state of the app

  @override
  Widget build(BuildContext context) {
    // The color below gets the appbar color so i can use during design

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I'm",
              style: theme.textTheme.subtitle2,
            ),

            Text(
              "Daniel Ochigbo",
              style: theme.textTheme.headline2,
            ),

            const Divider(
              endIndent: 200,
            ),

            const Text(
              AppText.textIntro,
              overflow: TextOverflow.ellipsis,
              maxLines: 15,
            ),
            VerticalSpace(10),

            const ToolImage(), // Gets tool images which has a function onPressed

            VerticalSpace(10),

            MyImage(
              theme: theme,
              width: double.infinity,
              height: 230,
            ),

            VerticalSpace(10),

            const Sociails(), // Gets social media images which has a function onPressed

            SizedBox(
              child: RichText(
                text: TextSpan(
                    text: 'Tools\n',
                    style: GoogleFonts.roboto(
                        color: Provider.of<ThemeManager>(context).themeData ==
                                AppTheme.lightTheme
                            ? Colors.black
                            : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline),
                    children: <TextSpan>[
                      TextSpan(
                          text: AppText.skills,
                          style: theme.textTheme.bodyText2),
                      TextSpan(
                        text: 'Technical Skill\n',
                        style: GoogleFonts.roboto(
                            color:
                                Provider.of<ThemeManager>(context).themeData ==
                                        AppTheme.lightTheme
                                    ? Colors.black
                                    : Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                          text: AppText.skills2,
                          style: theme.textTheme.bodyText2),
                    ]),
              ),
            ),

            VerticalSpace(20),

            // Displays projects
            SizedBox(
                height: 250,
                width: double.infinity,
                child:
                    Center(child: Projects(theme: theme.textTheme.subtitle2)))
          ],
        ),
      ),
    );
  }
}
