import '../Export/AllExport.dart';

class ThemeText{
  static TextStyle Apptitle(fontsize){
    return TextStyle(
      color: const Color(0xff000000),
      fontFamily: "SanB",
      fontWeight: FontWeight.bold,
      fontSize: fontsize,
    );
  }

  static TextStyle Appsubtitle(fontsize){
    return TextStyle(
      color: const Color(0xffC0C0C0),
      fontFamily: "SanB",
      fontWeight: FontWeight.bold,
      fontSize: fontsize,
    );
  }

   static TextStyle Cattitle(fontsize){
    return TextStyle(
      color:const Color(0xffFFFFFF),
      fontFamily: "SanB",
      fontWeight: FontWeight.bold,
      fontSize: fontsize,
    );
   }

   static TextStyle ColorTitle(fontsize){
    return TextStyle(
      color: const Color(0xff4C905C),
      fontFamily: "SanB",
      fontWeight: FontWeight.bold,
      fontSize: fontsize,
    );
   }
   
}