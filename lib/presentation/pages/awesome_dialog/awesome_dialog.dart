import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/presentation/components/responsive_builder.dart';
import 'package:web_portfolio/presentation/components/shadow_card.dart';
// import 'package:web_portfolio/presentation/routes/routes.gr.dart';
import 'package:web_portfolio/utils/assets.dart';
import 'package:web_portfolio/utils/constant.dart';
import 'package:websafe_svg/websafe_svg.dart';
// import 'dart:html' as html;

class AwesomeDialogPage extends StatelessWidget {
  const AwesomeDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      DialogCardInfo(
        dialog: AwesomeDialog(
          context: context,
          width: 400,
          dialogType: DialogType.INFO,
          headerAnimationLoop: false,
          animType: AnimType.BOTTOMSLIDE,
          title: 'INFO Fixed Width',
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
          dialogType: DialogType.WARNING,
          headerAnimationLoop: true,
          animType: AnimType.TOPSLIDE,
          title: 'Warning Fixed Width',
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
          title: 'Error Fixed Width',
          desc:
              'This is a Error dialog, with a fixed width of 400, and SCALE animation, with loop.',
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
          title: 'Succes Fixed Width',
          desc:
              'This is a Succes dialog, with a fixed width of 400, and LEFTSLIDE animation, with NO loop.',
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
          title: 'NO_HEADER Expanded Width',
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
            title: 'CUSTOM_HEADER Fixed Width',
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
            title: 'CUSTOM_HEADER and Buttons Fixed Width',
            desc:
                'This is a CUSTOM_HEADER and BUTTONS dialog, with a fixed 500 width, and BOTTOMSLIDE animation',
            btnOk: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK Flat Button')),
            btnCancel: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel Flat Button'))),
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
                  Text('INFO Fixed Width,CUSTOM BODY'),
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
          autoHide: Duration(seconds: 3),
          headerAnimationLoop: false,
          animType: AnimType.LEFTSLIDE,
          title: 'Succes Fixed Width AUTOHIDE',
          desc:
              'This is a Succes dialog, with a fixed width of 400, and LEFTSLIDE animation, with NO loop. and AUNTOHIDE after 3 seconds',
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
        primaryDesc: Text('Form Input'),
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
                SizedBox(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(EvaIcons.arrowBackOutline),
            onPressed: () {
              context.router.pop();
              //AutoRouter.of(context).pop();
            }),
        title: Text(
          'Awesome Dialog Package',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: WebsafeSvg.asset(Assets.github),
              tooltip: 'Open Github Repo',
              onPressed: () {
                // html.window.open(Constants.AWESOME_DIALOG_GITHUB, 'Awesome Dialog');
              })
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ResponsiveWidget(
              largeScreen: GridView.count(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                crossAxisCount: 3,
                childAspectRatio:
                    MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.6),
                children: List.generate(cards.length, (index) => cards[index]),
              ),
              mediumScreen: GridView.count(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                crossAxisCount: 2,
                childAspectRatio:
                    MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.6),
                children: List.generate(cards.length, (index) => cards[index]),
              ),
              smallScreen: ListView.builder(
                  physics: BouncingScrollPhysics(),
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
    this.dialog,
    this.primaryDesc,
  }) : super(key: key);
  final Widget? primaryDesc;
  final AwesomeDialog? dialog;
  @override
  Widget build(BuildContext context) {
    return ShadowCard(
        margin: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () => dialog?..show(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: dialog!.customHeader ??
                      (dialog!.dialogType != DialogType.NO_HEADER
                          ? FlareHeader(
                              dialogType: dialog!.dialogType, loop: dialog!.headerAnimationLoop)
                          : Container()),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: primaryDesc ??
                        dialog!.body ??
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dialog!.title!,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              dialog!.desc!,
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
