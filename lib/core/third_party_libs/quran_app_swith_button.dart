import 'package:flutter/material.dart';

// forked from: https://github.com/boringdeveloper/FlutterSwitch

class QuranAppSwitchButton extends StatefulWidget {
  const QuranAppSwitchButton({
    Key? key,
    required this.toggled,
    required this.onToggle,
    this.activeColor = const Color(0x22118c6e),
    this.inactiveColor = const Color(0xffe8eaec),
    this.activeTextColor = Colors.white70,
    this.inactiveTextColor = Colors.white70,
    this.toggleColor = const Color(0xff6b7f89),
    this.activeToggleColor = const Color(0xff118c6e),
    this.inactiveToggleColor,
    this.width = 32.0,
    this.height = 17,
    this.toggleSize = 15,
    this.valueFontSize = 16.0,
    this.borderRadius = 12.0,
    this.padding = 3.0,
    this.showOnOff = false,
    this.activeText,
    this.inactiveText,
    this.activeTextFontWeight,
    this.inactiveTextFontWeight,
    this.switchBorder,
    this.activeSwitchBorder,
    this.inactiveSwitchBorder,
    this.toggleBorder,
    this.activeToggleBorder,
    this.inactiveToggleBorder,
    this.activeIcon,
    this.inactiveIcon,
    this.duration = const Duration(milliseconds: 200),
    this.disabled = false,
  })  : assert(
            (switchBorder == null || activeSwitchBorder == null) &&
                (switchBorder == null || inactiveSwitchBorder == null),
            'Cannot provide switchBorder when an activeSwitchBorder or inactiveSwitchBorder was given\n'
            'To give the switch a border, use "activeSwitchBorder: border" or "inactiveSwitchBorder: border".'),
        assert(
            (toggleBorder == null || activeToggleBorder == null) &&
                (toggleBorder == null || inactiveToggleBorder == null),
            'Cannot provide toggleBorder when an activeToggleBorder or inactiveToggleBorder was given\n'
            'To give the toggle a border, use "activeToggleBorder: color" or "inactiveToggleBorder: color".'),
        super(key: key);

  final bool toggled;

  final ValueChanged<bool> onToggle;

  final bool showOnOff;

  final String? activeText;

  final String? inactiveText;

  final Color activeColor;

  final Color inactiveColor;

  final Color activeTextColor;

  final Color inactiveTextColor;

  final FontWeight? activeTextFontWeight;

  final FontWeight? inactiveTextFontWeight;

  final Color toggleColor;

  final Color? activeToggleColor;

  final Color? inactiveToggleColor;

  final double width;

  final double height;

  final double toggleSize;

  final double valueFontSize;

  final double borderRadius;

  final double padding;

  final BoxBorder? switchBorder;

  final BoxBorder? activeSwitchBorder;

  final BoxBorder? inactiveSwitchBorder;

  final BoxBorder? toggleBorder;

  final BoxBorder? activeToggleBorder;

  final BoxBorder? inactiveToggleBorder;

  final Widget? activeIcon;

  final Widget? inactiveIcon;

  final Duration duration;

  final bool disabled;

  @override
  HadithAppSwitchButtonState createState() => HadithAppSwitchButtonState();
}

class HadithAppSwitchButtonState extends State<QuranAppSwitchButton>
    with SingleTickerProviderStateMixin {
  late final Animation _toggleAnimation;
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: widget.toggled ? 1.0 : 0.0,
      duration: widget.duration,
    );
    _toggleAnimation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(QuranAppSwitchButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.toggled == widget.toggled) return;

    if (widget.toggled) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color toggleColor = Colors.white;
    Color switchColor = Colors.white;
    Border? switchBorder;
    Border? toggleBorder;

    if (widget.toggled) {
      toggleColor = widget.activeToggleColor ?? widget.toggleColor;
      switchColor = widget.activeColor;
      switchBorder = widget.activeSwitchBorder as Border? ??
          widget.switchBorder as Border?;
      toggleBorder = widget.activeToggleBorder as Border? ??
          widget.toggleBorder as Border?;
    } else {
      toggleColor = widget.inactiveToggleColor ?? widget.toggleColor;
      switchColor = widget.inactiveColor;
      switchBorder = widget.inactiveSwitchBorder as Border? ??
          widget.switchBorder as Border?;
      toggleBorder = widget.inactiveToggleBorder as Border? ??
          widget.toggleBorder as Border?;
    }

    double textSpace = widget.width - widget.toggleSize;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SizedBox(
          width: widget.width,
          child: Align(
            child: GestureDetector(
              onTap: () {
                if (!widget.disabled) {
                  if (widget.toggled) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }

                  widget.onToggle(!widget.toggled);
                }
              },
              child: Opacity(
                opacity: widget.disabled ? 0.6 : 1,
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  // padding: EdgeInsets.all(widget.padding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    color: switchColor,
                    border: switchBorder,
                  ),
                  child: Stack(
                    children: <Widget>[
                      AnimatedOpacity(
                        opacity: widget.toggled ? 1.0 : 0.0,
                        duration: widget.duration,
                        child: Container(
                          width: textSpace,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          alignment: Alignment.centerLeft,
                          child: _activeText,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: AnimatedOpacity(
                          opacity: !widget.toggled ? 1.0 : 0.0,
                          duration: widget.duration,
                          child: Container(
                            width: textSpace,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            alignment: Alignment.centerRight,
                            child: _inactiveText,
                          ),
                        ),
                      ),
                      Align(
                        alignment: _toggleAnimation.value,
                        child: Container(
                          width: widget.toggleSize,
                          height: widget.toggleSize,
                          // padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: toggleColor,
                            border: toggleBorder,
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Stack(
                              children: [
                                Center(
                                  child: AnimatedOpacity(
                                    opacity: widget.toggled ? 1.0 : 0.0,
                                    duration: widget.duration,
                                    child: widget.activeIcon,
                                  ),
                                ),
                                Center(
                                  child: AnimatedOpacity(
                                    opacity: !widget.toggled ? 1.0 : 0.0,
                                    duration: widget.duration,
                                    child: widget.inactiveIcon,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  FontWeight get _activeTextFontWeight =>
      widget.activeTextFontWeight ?? FontWeight.w900;

  FontWeight get _inactiveTextFontWeight =>
      widget.inactiveTextFontWeight ?? FontWeight.w900;

  Widget get _activeText {
    if (widget.showOnOff) {
      return Text(
        widget.activeText ?? "On",
        style: TextStyle(
          color: widget.activeTextColor,
          fontWeight: _activeTextFontWeight,
          fontSize: widget.valueFontSize,
        ),
      );
    }

    return const Text("");
  }

  Widget get _inactiveText {
    if (widget.showOnOff) {
      return Text(
        widget.inactiveText ?? "Off",
        style: TextStyle(
          color: widget.inactiveTextColor,
          fontWeight: _inactiveTextFontWeight,
          fontSize: widget.valueFontSize,
        ),
        textAlign: TextAlign.right,
      );
    }

    return const Text("");
  }
}
