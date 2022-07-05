import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';
import 'package:web_portfolio/presentation/pages/about/skills.dart';
// import 'dart:html' as html;
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
                const ProfileAndSocials(),
                FadeIn(
                  delay: 5,
                  child: const Skills(),
                ),
              ],
            ),
            mediumScreen: Column(
              children: [
                const ProfileAndSocials(),
                FadeIn(
                  delay: 5,
                  child: const Skills(),
                ),
              ],
            ),
            largeScreen: Row(
              children: [
                const Expanded(child: ProfileAndSocials()),
                Expanded(
                  child: FadeIn(
                    delay: 5,
                    child: const Skills(),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: Image.asset(Assets.avatar).image,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          delay: 1,
          child: const Text(
            'Marcos Rodriguez',
            textAlign: TextAlign.center,
            textScaleFactor: 4,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FadeIn(
          from: SlideFrom.TOP,
          delay: 2,
          child: Text(
            S.of(context).softwareDev,
            style: Theme.of(context).textTheme.caption,
            textScaleFactor: 2,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        FadeIn(
          from: SlideFrom.BOTTOM,
          delay: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                    ),
                    icon: SizedBox(width: 20, height: 20, child: WebsafeSvg.asset(Assets.github)),
                    label: Text(
                      'Github',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    onPressed: () => launch(Constants.PROFILE_GITHUB)),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                ),
                icon: SizedBox(width: 20, height: 20, child: WebsafeSvg.asset(Assets.twitter)),
                label: Text(
                  'Twitter',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                onPressed: () => launch(Constants.PROFILE_TWITTER),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                ),
                icon: SizedBox(width: 20, height: 20, child: WebsafeSvg.asset(Assets.linkedin)),
                label: Text(
                  'Linkedin',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                onPressed: () => launch(
                  Constants.PROFILE_LINKEDIN,
                ),
              ),
            ],
          ),
        ),
        FadeIn(
          delay: 4,
          from: SlideFrom.BOTTOM,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                ),
                icon: SizedBox(width: 20, height: 20, child: WebsafeSvg.asset(Assets.facebook)),
                label: Text(
                  'Facebook',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                onPressed: () => launch(Constants.PROFILE_FACEBOOK),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                ),
                icon: SizedBox(width: 20, height: 20, child: WebsafeSvg.asset(Assets.instagram)),
                label: Text(
                  'Instagram',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                onPressed: () => launch(Constants.PROFILE_INSTAGRAM),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
