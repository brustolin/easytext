library txt;

import 'package:flutter/material.dart';

TextStyle _buildStyle(TextStyle? baseStyle, double? size, Color? color, FontWeight? weight, String? fontFamily, bool italic) =>
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

///Themed style to use in the text
enum TxtStyle {
  none,
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  caption,
  button,
  overline,
}

/// A Text widget helper to avoid boilerplate.
///
/// The [Txt] widget expose a fill extra paramaters to style a Text
/// it also offers a variety of constructors to create styled or themed Text
class Txt extends StatelessWidget {
  /// Text to display
  final String text;

  /// Text style
  final TextStyle? style;

  /// {@macro flutter.painting.textPainter.strutStyle}
  final StrutStyle? strutStyle;

  /// Text horizontal aligment
  final TextAlign? align;

  /// Text horizontal direction
  final TextDirection? direction;

  /// Text locale
  final Locale? locale;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
  final bool? softWrap;

  /// How visual overflow should be handled.
  final TextOverflow? overflow;

  /// Text scale factor
  final double? scaleFactor;

  /// Text maximum lines
  final int? maxLines;

  /// An alternative semantics label for this text.
  final String? semanticsLabel;

  /// {@macro flutter.painting.textPainter.textWidthBasis}
  final TextWidthBasis? widthBasis;

  /// Text size
  final double? size;

  /// Text color
  final Color? color;

  /// Text font weight
  final FontWeight? weight;

  ///T ext font family
  final String? fontFamily;

  /// Indicates whether the text is italic
  final bool italic;

  /// Text base style. Used to indicate themes
  final TxtStyle baseStyle;

  /// Creates a txt widget.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt(this.text,
      {Key? key,
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

  /// Creates a txt widget with bold text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.b(this.text,
      {Key? key,
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

  /// Creates a txt widget with italic text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], [weight] and [fontFamily] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.i(this.text,
      {Key? key,
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

  /// Creates a txt widget with bold and italic text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], and [fontFamily] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.bi(this.text,
      {Key? key,
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

  /// Creates a txt widget with determined text size.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.s(
    this.text,
    this.size, {
    Key? key,
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

  /// Creates a txt widget with determined text color.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.c(
    this.text,
    this.color, {
    Key? key,
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

  /// Creates a txt widget with determined text color and size.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.sc(
    this.text,
    this.size,
    this.color, {
    Key? key,
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

  /// Creates a bold txt widget with determined text size.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.bs(
    this.text,
    this.size, {
    Key? key,
    this.color,
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
    this.fontFamily,
    this.italic = false,
  })  : this.baseStyle = TxtStyle.none,
        this.weight = FontWeight.bold,
        super(
          key: key,
        );

  /// Creates a bold txt widget with determined text color and size.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.bsc(
    this.text,
    this.size,
    this.color, {
    Key? key,
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
    this.fontFamily,
    this.italic = false,
  })  : this.baseStyle = TxtStyle.none,
        this.weight = FontWeight.bold,
        super(
          key: key,
        );

  /// Creates a txt widget with headline1 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline1(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline1,
        super(
          key: key,
        );

  /// Creates a txt widget with headline2 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline2(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline2,
        super(
          key: key,
        );

  /// Creates a txt widget with headline3 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline3(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline3,
        super(
          key: key,
        );

  /// Creates a txt widget with headline4 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline4(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline4,
        super(
          key: key,
        );

  /// Creates a txt widget with headline5 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline5(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline5,
        super(
          key: key,
        );

  /// Creates a txt widget with headline6 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.headline6(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.headline6,
        super(
          key: key,
        );

  /// Creates a txt widget with subtitle1 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.subtitle1(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.subtitle1,
        super(
          key: key,
        );

  /// Creates a txt widget with subtitle2 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.subtitle2(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.subtitle2,
        super(
          key: key,
        );

  /// Creates a txt widget with bodyText1 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.bodyText1(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.bodyText1,
        super(
          key: key,
        );

  /// Creates a txt widget with bodyText2 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.bodyText2(this.text,
      {Key? key,
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
      : this.baseStyle = TxtStyle.bodyText2,
        super(
          key: key,
        );

  /// Creates a txt widget with caption theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.caption(this.text,
      {Key? key,
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

  /// Creates a txt widget with button theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.button(this.text,
      {Key? key,
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

  /// Creates a txt widget with overline theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
  const Txt.overline(this.text,
      {Key? key,
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

  TextStyle? _baseStyle(BuildContext context) {
    switch (this.baseStyle) {
      case TxtStyle.headline1:
        return Theme.of(context).primaryTextTheme.headline1;
      case TxtStyle.headline2:
        return Theme.of(context).primaryTextTheme.headline2;
      case TxtStyle.headline3:
        return Theme.of(context).primaryTextTheme.headline3;
      case TxtStyle.headline4:
        return Theme.of(context).primaryTextTheme.headline4;
      case TxtStyle.headline5:
        return Theme.of(context).primaryTextTheme.headline5;
      case TxtStyle.headline6:
        return Theme.of(context).primaryTextTheme.headline6;
      case TxtStyle.subtitle1:
        return Theme.of(context).primaryTextTheme.subtitle1;
      case TxtStyle.subtitle2:
        return Theme.of(context).primaryTextTheme.subtitle2;
      case TxtStyle.bodyText1:
        return Theme.of(context).primaryTextTheme.bodyText1;
      case TxtStyle.bodyText2:
        return Theme.of(context).primaryTextTheme.bodyText2;
      case TxtStyle.caption:
        return Theme.of(context).primaryTextTheme.caption;
      case TxtStyle.button:
        return Theme.of(context).primaryTextTheme.button;
      case TxtStyle.overline:
        return Theme.of(context).primaryTextTheme.overline;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? usingStyle = baseStyle != TxtStyle.none ? _baseStyle(context)!.merge(style) : style;

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
        style: _buildStyle(usingStyle, size, color, weight, fontFamily, italic));
  }
}
