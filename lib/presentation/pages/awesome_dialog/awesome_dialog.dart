import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';
// import 'package:web_portfolio/presentation/routes/routes.gr.dart';
import 'package:web_portfolio/utils/assets.dart';
import 'package:web_portfolio/utils/constant.dart';
import 'package:websafe_svg/websafe_svg.dart';
// import 'dart:html' as html;
import '../../routes/routes.gr.dart';

class AwesomeDialogPage extends StatelessWidget {
  const AwesomeDialogPage({Key? key}) : super(key: key);

  List<Widget> getAwesomeDialogList(BuildContext context) => [
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            headerAnimationLoop: false,
            animType: AnimType.BOTTOMSLIDE,
            title: 'INFO',
            desc:
                'This is a Info dialog, with a fixed width of 400, and BOTTOMSLIDE animation, with no loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.INFO_REVERSED,
            headerAnimationLoop: false,
            title: 'INFO_REVERSED',
            desc:
                'This is a INFO_REVERSED dialog, with a fixed width of 400, and SCALE animation, with no loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.QUESTION,
            animType: AnimType.LEFTSLIDE,
            headerAnimationLoop: false,
            title: 'QUESTION',
            desc:
                'This is a QUESTION dialog, with a fixed width of 400, and LEFTSLIDE animation, with no loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.WARNING,
            animType: AnimType.TOPSLIDE,
            title: 'WARNING',
            desc:
                'This is a Warning dialog, with a fixed width of 400, and TOPSLIDE animation, with loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.ERROR,
            headerAnimationLoop: true,
            animType: AnimType.SCALE,
            title: 'ERROR',
            desc:
                'This is a ERROR dialog, with a fixed width of 400, and SCALE animation, with loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.SUCCES,
            headerAnimationLoop: false,
            animType: AnimType.LEFTSLIDE,
            title: 'SUCCES',
            desc:
                'This is a SUCCES dialog, with a fixed width of 400, and LEFTSLIDE animation, with no loop.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            dialogType: DialogType.NO_HEADER,
            headerAnimationLoop: false,
            animType: AnimType.RIGHSLIDE,
            title: 'NO_HEADER',
            desc:
                'This is a NO_HEADER dialog, with a Expanded width, and RIGHSLIDE animation, without buttons',
          ),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
              context: context,
              customHeader: WebsafeSvg.asset(Assets.github),
              width: 600,
              headerAnimationLoop: false,
              animType: AnimType.SCALE,
              title: 'CUSTOM_HEADER',
              desc:
                  'This is a CUSTOM_HEADER dialog, with a Fixed 600 width, and SCALE animation, with only OK Button',
              btnOkOnPress: () {}),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
              context: context,
              customHeader: WebsafeSvg.asset(Assets.facebook),
              headerAnimationLoop: false,
              width: 500,
              animType: AnimType.BOTTOMSLIDE,
              title: 'CUSTOM_HEADER and BUTTONS',
              desc:
                  'This is a CUSTOM_HEADER and BUTTONS dialog, with a fixed 500 width, and BOTTOMSLIDE animation',
              btnOk: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK Eleveted Button')),
              btnCancel: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel Eleveted Button'))),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
              context: context,
              dialogType: DialogType.INFO,
              width: 500,
              headerAnimationLoop: false,
              animType: AnimType.SCALE,
              body: Center(
                child: Column(
                  children: [
                    Text('INFO CUSTOM BODY'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              btnOkOnPress: () {}),
        ),
        DialogCardInfo(
          dialog: AwesomeDialog(
            context: context,
            width: 400,
            dialogType: DialogType.SUCCES,
            autoHide: const Duration(seconds: 3),
            headerAnimationLoop: false,
            animType: AnimType.LEFTSLIDE,
            title: 'SUCCES with AUTOHIDE',
            desc:
                'This is a SUCCES dialog, with a fixed width of 400, and LEFTSLIDE animation, with no loop. and AUNTOHIDE after 3 seconds',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ),
        ),
        DialogCardInfo(
            dialog: AwesomeDialog(
          context: context,
          keyboardAware: true,
          dismissOnBackKeyPress: false,
          dialogType: DialogType.WARNING,
          animType: AnimType.BOTTOMSLIDE,
          btnCancelText: "Cancel Order",
          btnOkText: "Yes, I will pay",
          title: 'Continue to pay?',
          padding: const EdgeInsets.all(16.0),
          desc:
              'Please confirm that you will pay 3000 INR within 30 mins. Creating orders without paying will create penalty charges, and your account may be disabled.',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
        )),
        DialogCardInfo(
          primaryDesc: Text('Form Input with keyboard aware'),
          dialog: AwesomeDialog(
            context: context,
            animType: AnimType.SCALE,
            dialogType: DialogType.INFO,
            keyboardAware: true,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Form Data',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Material(
                    elevation: 0,
                    color: Colors.blueGrey.withAlpha(40),
                    child: TextFormField(
                      autofocus: true,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Title',
                        prefixIcon: Icon(Icons.text_fields),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    elevation: 0,
                    color: Colors.blueGrey.withAlpha(40),
                    child: TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.multiline,
                      maxLengthEnforced: true,
                      minLines: 2,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Description',
                        prefixIcon: Icon(Icons.text_fields),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedButton(
                      text: 'Close',
                      pressEvent: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ),
          ),
        )
      ];
  @override
  Widget build(BuildContext context) {
    final cards = getAwesomeDialogList(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Awesome Dialog',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 20,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              tooltip: S.of(context).aboutMe,
              onPressed: () {
                AutoRouter.of(context).replaceAll([const MyHomePageRoute()]);
                // html.window.open(Constants.AWESOME_DIALOG_GITHUB, 'Awesome Dialog');
              }),
          IconButton(
              icon: WebsafeSvg.asset(Assets.github),
              tooltip: S.of(context).openGithub,
              onPressed: () {
                launch(Constants.AWESOME_DIALOG_GITHUB);
                // html.window.open(Constants.AWESOME_DIALOG_GITHUB, 'Awesome Dialog');
              })
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ResponsiveWidget(
              largeScreen: GridView.count(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                crossAxisCount: 3,
                childAspectRatio:
                    MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.6),
                children: List.generate(cards.length, (index) => cards[index]),
              ),
              mediumScreen: GridView.count(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                crossAxisCount: 2,
                childAspectRatio:
                    MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.6),
                children: List.generate(cards.length, (index) => cards[index]),
              ),
              smallScreen: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: cards.length,
                  itemBuilder: (context, index) => cards[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogCardInfo extends StatelessWidget {
  const DialogCardInfo({
    Key? key,
    required this.dialog,
    this.primaryDesc,
  }) : super(key: key);
  final Widget? primaryDesc;
  final AwesomeDialog dialog;
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
        width: 400,
        margin: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () {
            //Lo hago asi para que sea una nueva instancia
            AwesomeDialog(
              dialogType: dialog.dialogType,
              desc: dialog.desc,
              title: dialog.title,
              body: dialog.body,
              aligment: dialog.aligment,
              animType: dialog.animType,
              autoHide: dialog.autoHide,
              borderSide: dialog.borderSide,
              btnCancel: dialog.btnCancel,
              btnCancelText: dialog.btnCancelText,
              btnCancelColor: dialog.btnCancelColor,
              btnCancelIcon: dialog.btnCancelIcon,
              btnCancelOnPress: dialog.btnCancelOnPress,
              btnOk: dialog.btnOk,
              btnOkColor: dialog.btnOkColor,
              btnOkIcon: dialog.btnOkIcon,
              btnOkOnPress: dialog.btnOkOnPress,
              btnOkText: dialog.btnOkText,
              buttonsBorderRadius: dialog.buttonsBorderRadius,
              buttonsTextStyle: dialog.buttonsTextStyle,
              closeIcon: dialog.closeIcon,
              customHeader: dialog.customHeader,
              dialogBackgroundColor: dialog.dialogBackgroundColor,
              dismissOnBackKeyPress: dialog.dismissOnBackKeyPress,
              dismissOnTouchOutside: dialog.dismissOnTouchOutside,
              headerAnimationLoop: dialog.headerAnimationLoop,
              isDense: dialog.isDense,
              keyboardAware: dialog.keyboardAware,
              onDissmissCallback: dialog.onDissmissCallback,
              padding: dialog.padding,
              showCloseIcon: dialog.showCloseIcon,
              useRootNavigator: dialog.useRootNavigator,
              width: dialog.width,
              context: context,
            ).show();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: dialog.customHeader ??
                      (dialog.dialogType != DialogType.NO_HEADER
                          ? FlareHeader(
                              dialogType: dialog.dialogType, loop: dialog.headerAnimationLoop)
                          : Container()),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: primaryDesc ??
                        dialog.body ??
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dialog.title!,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              dialog.desc!,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ))
              ],
            ),
          ),
        ));
  }
}
