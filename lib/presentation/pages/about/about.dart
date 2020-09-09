import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';
import 'package:web_portfolio/presentation/pages/about/skills.dart';
import 'dart:html' as html;
import 'package:web_portfolio/utils/assets.dart';
import 'package:web_portfolio/utils/constant.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          ResponsiveWidget(
            smallScreen: Column(
              children: [
                ProfileAndSocials(),
                FadeIn(
                  delay: 5,
                  from: SlideFrom.RIGHT,
                  child: Skills(),
                ),
              ],
            ),
            mediumScreen: Column(
              children: [
                ProfileAndSocials(),
                FadeIn(
                  delay: 5,
                  from: SlideFrom.RIGHT,
                  child: Skills(),
                ),
              ],
            ),
            largeScreen: Row(
              children: [
                Expanded(child: ProfileAndSocials()),
                Expanded(
                  child: FadeIn(
                    delay: 5,
                    from: SlideFrom.RIGHT,
                    child: Skills(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ProfileAndSocials extends StatelessWidget {
  const ProfileAndSocials({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: Image.asset(Assets.avatar).image,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          delay: 1,
          child: Text(
            'Marcos Rodriguez',
            textScaleFactor: 4,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          delay: 2,
          child: Text(
            'Mobile Software Developer.',
            style: Theme.of(context).textTheme.caption,
            textScaleFactor: 2,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        FadeIn(
          from: SlideFrom.BOTTOM,
          delay: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: WebsafeSvg.asset(Assets.github)),
                label: Text('Github'),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_GITHUB, 'marcos930807'),
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: WebsafeSvg.asset(Assets.twitter)),
                label: Text('Twitter'),
                onPressed: () =>
                    html.window.open(Constants.PROFILE_TWITTER, 'marcos930807'),
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: WebsafeSvg.asset(Assets.linkedin)),
                label: Text('Linkedin'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_LINKEDIN, 'marcos930807'),
              ),
            ],
          ),
        ),
        FadeIn(
          delay: 4,
          from: SlideFrom.BOTTOM,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: WebsafeSvg.asset(Assets.facebook)),
                label: Text('Facebook'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_FACEBOOK, 'marcos930807'),
              ),
              FlatButton.icon(
                icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: WebsafeSvg.asset(Assets.instagram)),
                label: Text('Instagram'),
                onPressed: () => html.window
                    .open(Constants.PROFILE_INSTAGRAM, 'marcos930807'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     FlatButton.icon(
        //       icon: SizedBox(
        //           width: 20,
        //           height: 20,
        //           child: Image.asset(Assets.instagram)),
        //       label: Text('Instagram'),
        //       onPressed:()=> html.window.open(Constants.PROFILE_INSTAGRAM,'adityadroid' ),
        //     ),FlatButton.icon(
        //       icon: SizedBox(
        //           width: 20,
        //           height: 20,
        //           child: Image.asset(Assets.facebook)),
        //       label: Text('Facebook'),
        //       onPressed:()=> html.window.open(Constants.PROFILE_FACEBOOK,'adityadroid' ),
        //     ),FlatButton.icon(
        //       icon: SizedBox(
        //           width: 20,
        //           height: 20,
        //           child: Image.asset(Assets.linkedin)),
        //       label: Text('Linkedin'),
        //       onPressed:()=> html.window.open(Constants.PROFILE_LINKEDIN,'adityadroid' ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
