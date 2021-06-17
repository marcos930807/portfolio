import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomCupertinoTabBar extends StatefulWidget {
  ///The color of this [CustomCupertinoTabBar].
  final Color _backgroundColor;

  ///The color of the moving selection bar.
  final Color _foregroundColor;

  ///The widgets that are to be displayed as the tabs of this [CustomCupertinoTabBar].
  final List<Widget> _widgets;

  ///The function that is to be used to get the current index/value of this [CustomCupertinoTabBar].
  final Function _valueGetter;

  ///The function that is to be called when the current index/value of this [CustomCupertinoTabBar] changes.
  final Function(int) _onTap;

  ///Set this value to true if you want separator lines to be displayed between the [_widgets].
  final bool useSeparators;

  ///The gap that is to be shown on the left and right sides of each [Widget] in the [_widgets].
  final double horizontalPadding;

  ///The gap that is to be shown on the top and bottom sides of each [Widget] in the [_widgets].
  final double verticalPadding;

  ///The border radius that is to be used to display this [CustomCupertinoTabBar] and the moving selection bar. The default value corresponds to the default iOS 13 value.
  final BorderRadius borderRadius;

  ///The duration that is to be used for the animations of the moving selection bar.
  final Duration duration;

  ///Set this value to true if you want this [CustomCupertinoTabBar] to expand to fill the available gap.
  final bool expand;

  final Curve curve;

  const CustomCupertinoTabBar(
    this._backgroundColor,
    this._foregroundColor,
    this._widgets,
    this._valueGetter,
    this._onTap, {
    Key? key,
    this.useSeparators: false,
    this.horizontalPadding: 5.0,
    this.verticalPadding: 10.0,
    this.borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
    this.duration: const Duration(milliseconds: 250),
    this.expand: false,
    this.curve: Curves.easeOutBack,
  }) : super(key: key);

  @override
  _CustomCupertinoTabBarState createState() {
    return _CustomCupertinoTabBarState();
  }
}

class _CustomCupertinoTabBarState extends State<CustomCupertinoTabBar> {
  late List<GlobalKey> _globalKeys;
  late bool _showSelf;
  late double _maxWidth;
  double? _maxHeight;

  void onPostFrameCallback(Duration duration) {
    if (!_showSelf) {
      setState(() {
        _maxWidth = 0;
        _maxHeight = 0;
        for (int i = 0; i < _globalKeys.length; i++) {
          RenderBox _renderBox = _globalKeys[i].currentContext!.findRenderObject() as RenderBox;
          if (_renderBox.size.width > _maxWidth) {
            _maxWidth = _renderBox.size.width;
          }
          if (_renderBox.size.height > _maxHeight!) {
            _maxHeight = _renderBox.size.height;
          }
        }
        _maxWidth += widget.horizontalPadding * 2.0;
        if (_maxHeight != null) {
          _maxHeight = _maxHeight! + widget.verticalPadding * 2.0;
        }

        _showSelf = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _globalKeys = <GlobalKey>[];
    for (int i = 0; i < widget._widgets.length; i++) {
      _globalKeys.add(GlobalKey());
    }
    if (widget.expand) {
      _globalKeys.add(GlobalKey());
    }
    _showSelf = false;
    WidgetsBinding.instance!.addPostFrameCallback(onPostFrameCallback);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Alignment _getAlignment() {
    return Alignment(
        -1.0 + ((widget._valueGetter() / (widget._widgets.length - 1) as num) * 2.0) as double,
        0.0);
  }

  @override
  Widget build(BuildContext context) {
    if (!_showSelf) {
      return Stack(
        children: List<Widget>.generate(_globalKeys.length, (int index) {
          if (index < widget._widgets.length) {
            return Container(
              key: _globalKeys[index],
              child: widget._widgets[index],
            );
          } else {
            return Container(
              key: _globalKeys[index],
              constraints: widget.expand ? BoxConstraints.expand(height: 1) : null,
            );
          }
        }),
      );
    } else {
      return Container(
        height: widget.expand ? null : _maxHeight,
        width: widget.expand
            ? null
            : (_maxWidth + widget.horizontalPadding * 2.0) * widget._widgets.length,
        constraints: widget.expand ? BoxConstraints.expand(height: _maxHeight) : null,
        decoration: BoxDecoration(
          color: widget._backgroundColor,
          borderRadius: widget.borderRadius,
        ),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            AnimatedAlign(
              alignment: _getAlignment(),
              curve: widget.curve,
              duration: widget.duration,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: widget.expand ? null : _maxHeight,
                  width: widget.expand ? null : _maxWidth + widget.horizontalPadding * 2.0,
                  constraints: widget.expand
                      ? BoxConstraints.expand(
                          width:
                              _maxWidth / widget._widgets.length - widget.horizontalPadding * 2.0)
                      : null,
                  decoration: BoxDecoration(
                    color: widget._foregroundColor,
                    borderRadius: widget.borderRadius,
                  ),
                ),
              ),
            ),
            if (widget.useSeparators)
              Row(
                children: List<Widget>.generate(widget._widgets.length * 2 - 1, (int index) {
                  if (index % 2 == 0) {
                    int _trueIndex = (index / 2.0).floor();
                    return Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Material(
                            elevation: 0,
                            color: Colors.transparent,
                            child: InkWell(
                              child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  alignment: Alignment.center,
                                  child: widget._widgets[_trueIndex]),
                              onTap: () {
                                widget._onTap(_trueIndex);
                              },
                            )),
                      ),
                    );
                  } else {
                    return Container(
                      height: _maxHeight! / 2.0,
                      width: 1.0,
                      color: widget._foregroundColor,
                    );
                  }
                }),
              ),
            if (!widget.useSeparators)
              Row(
                children: List<Widget>.generate(widget._widgets.length, (int index) {
                  return Expanded(
                    child: InkWell(
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          alignment: Alignment.center,
                          child: widget._widgets[index]),
                      onTap: () {
                        widget._onTap(index);
                      },
                    ),
                  );
                }),
              ),
          ],
        ),
      );
    }
  }
}
