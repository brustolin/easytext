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

///Themed style to use in the text
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

/// A Text widget helper to avoid boilerplate.
///
/// The [Txt] widget expose a fill extra paramaters to style a Text
/// it also offers a variety of constructors to create styled or themed Text
class Txt extends StatelessWidget {
  /// Text to display
  final String text;

  /// Text style
  final TextStyle style;

  /// {@macro flutter.painting.textPainter.strutStyle}
  final StrutStyle strutStyle;

  /// Text horizontal aligment
  final TextAlign align;

  /// Text horizontal direction
  final TextDirection direction;

  /// Text locale
  final Locale locale;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
  final bool softWrap;

  /// How visual overflow should be handled.
  final TextOverflow overflow;

  /// Text scale factor
  final double scaleFactor;

  /// Text maximum lines
  final int maxLines;

  /// An alternative semantics label for this text.
  final String semanticsLabel;

  /// {@macro flutter.painting.textPainter.textWidthBasis}
  final TextWidthBasis widthBasis;

  /// Text size
  final double size;

  /// Text color
  final Color color;

  /// Text font weight
  final FontWeight weight;

  ///T ext font family
  final String fontFamily;

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

  /// Creates a txt widget with bold text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with italic text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], [weight] and [fontFamily] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with bold and italic text.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  ///
  /// The parameters [size], [color], and [fontFamily] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with display4 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with display3 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with display2 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with display1 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with headline theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with title theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with subhead theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with body2 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with body1 theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with caption theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with button theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with subtitle theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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

  /// Creates a txt widget with overline theme.
  ///
  /// The [style] parameter is used to override theme properties.
  ///
  /// The parameters [size], [color], [weight], [fontFamily] and [italic] overrides the style properties.
  ///
  /// The [text] parameter must not be null.
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
