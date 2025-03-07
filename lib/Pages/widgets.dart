import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

text(data, BuildContext context, size) {
  return Text(data,
      style: GoogleFonts.ptSerif(
        textStyle: Theme.of(context).textTheme.bodySmall,
        fontSize: size,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ));
}

Nametext(data, BuildContext context, size) {
  return Text(data,
      style: GoogleFonts.montserrat(
        textStyle: Theme.of(context).textTheme.titleMedium,
        fontSize: size,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.normal,
      ));
}

Normaltext(data, BuildContext context, size) {
  return Text(data,
      style: GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.labelMedium,
        fontSize: size,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
      ));
}

extension SizedBoxExtnsion on num {
  SizedBox get widthBox => SizedBox(width: toDouble());
  SizedBox get heightBox => SizedBox(height: toDouble());
}
