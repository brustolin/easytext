library txt;

import 'package:flutter/material.dart';

TextStyle _buildStyle(TextStyle baseStyle, double size, Color color,
        FontWeight weight, String fontFamily, bool italic) =>
    baseStyle?.copyWith(
        color: color ?? baseStyle.color,
        fontSize: size ?? baseStyle.fontSize,
        fontWeight: weight ?? baseStyle.fontWeight,
        fontFamily: fontFamily ?? baseStyle.fontFamily,
        fontStyle: italic ? FontStyle.italic : FontStyle.normal) ??
    TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: fontFamily,
        fontStyle: italic ? FontStyle.italic : FontStyle.normal);

enum TxtStyle {
  none,
  display4,
  display3,
  display2,
  display1,
  headline,
  title,
  subhead,
  body2,
  body1,
  caption,
  button,
  subtitle,
  overline,
}

class Txt extends StatelessWidget {
  final String text;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign align;
  final TextDirection direction;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double scaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis widthBasis;
  final double size;
  final Color color;
  final FontWeight weight;
  final String fontFamily;
  final bool italic;
  final TxtStyle baseStyle;

  const Txt(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.none,
        super(
          key: key,
        );

  const Txt.b(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.none,
        this.weight = FontWeight.bold,
        super(
          key: key,
        );

  const Txt.i(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily})
      : this.baseStyle = TxtStyle.none,
        this.italic = true,
        super(
          key: key,
        );

  const Txt.bi(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.fontFamily})
      : this.baseStyle = TxtStyle.none,
        this.italic = true,
        this.weight = FontWeight.bold,
        super(
          key: key,
        );

  const Txt.s(
    this.text,
    this.size, {
    Key key,
    this.style,
    this.strutStyle,
    this.align,
    this.direction,
    this.locale,
    this.softWrap,
    this.overflow,
    this.scaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.widthBasis,
    this.color,
    this.weight,
    this.fontFamily,
    this.italic = false,
  })  : this.baseStyle = TxtStyle.none,
        super(
          key: key,
        );

  const Txt.c(
    this.text,
    this.color, {
    Key key,
    this.style,
    this.strutStyle,
    this.align,
    this.direction,
    this.locale,
    this.softWrap,
    this.overflow,
    this.scaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.widthBasis,
    this.size,
    this.weight,
    this.fontFamily,
    this.italic = false,
  })  : this.baseStyle = TxtStyle.none,
        super(
          key: key,
        );

  const Txt.sc(
    this.text,
    this.size,
    this.color, {
    Key key,
    this.style,
    this.strutStyle,
    this.align,
    this.direction,
    this.locale,
    this.softWrap,
    this.overflow,
    this.scaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.widthBasis,
    this.weight,
    this.fontFamily,
    this.italic = false,
  })  : this.baseStyle = TxtStyle.none,
        super(
          key: key,
        );

  Txt.display4(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.display4,
        super(
          key: key,
        );

  Txt.display3(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.display3,
        super(
          key: key,
        );

  Txt.display2(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.display2,
        super(
          key: key,
        );

  Txt.display1(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.display1,
        super(
          key: key,
        );

  Txt.headline(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.headline,
        super(
          key: key,
        );

  Txt.title(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.title,
        super(
          key: key,
        );

  Txt.subhead(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.subhead,
        super(
          key: key,
        );

  Txt.body2(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.body2,
        super(
          key: key,
        );

  Txt.body1(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.body1,
        super(
          key: key,
        );

  Txt.caption(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.caption,
        super(
          key: key,
        );

  Txt.button(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.button,
        super(
          key: key,
        );

  Txt.subtitle(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.subtitle,
        super(
          key: key,
        );

  Txt.overline(this.text,
      {Key key,
      this.style,
      this.strutStyle,
      this.align,
      this.direction,
      this.locale,
      this.softWrap,
      this.overflow,
      this.scaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.widthBasis,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.italic = false})
      : this.baseStyle = TxtStyle.overline,
        super(
          key: key,
        );

  TextStyle _baseStyle(BuildContext context) {
    switch (this.baseStyle) {
      case TxtStyle.display4:
        return Theme.of(context).textTheme.display4;
      case TxtStyle.display3:
        return Theme.of(context).textTheme.display3;
      case TxtStyle.display2:
        return Theme.of(context).textTheme.display2;
      case TxtStyle.display1:
        return Theme.of(context).textTheme.display1;
      case TxtStyle.headline:
        return Theme.of(context).textTheme.headline;
      case TxtStyle.title:
        return Theme.of(context).textTheme.title;
      case TxtStyle.subhead:
        return Theme.of(context).textTheme.subhead;
      case TxtStyle.body2:
        return Theme.of(context).textTheme.body2;
      case TxtStyle.body1:
        return Theme.of(context).textTheme.body2;
      case TxtStyle.caption:
        return Theme.of(context).textTheme.caption;
      case TxtStyle.button:
        return Theme.of(context).textTheme.button;
      case TxtStyle.subtitle:
        return Theme.of(context).textTheme.subtitle;
      case TxtStyle.overline:
        return Theme.of(context).textTheme.overline;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle usingStyle = baseStyle != TxtStyle.none && baseStyle != null
        ? _baseStyle(context).merge(style)
        : style;

    return Text(text,
        strutStyle: strutStyle,
        textAlign: align,
        textDirection: direction,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: scaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: widthBasis,
        style:
            _buildStyle(usingStyle, size, color, weight, fontFamily, italic));
  }
}
