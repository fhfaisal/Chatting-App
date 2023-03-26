
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
myFontStyle(double Fs,[FontWeight? Fw, Color? clr]){
  return GoogleFonts.nunito(
    fontSize:Fs ,
    fontWeight: Fw,
    color:clr ,
  );
}
late Size mq;
