import 'package:intl/intl.dart';

class MyDateUtils{
  static String formatTaskDate(DateTime dateTime){
    DateFormat formatter=DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }


/*
 static DateTime extractDateOnly (DateTime dateTime){
   return DateTime(
       dateTime.year,
       dateTime.month,
       dateTime.day
   );
 }

  */

}
String formatMessageDate(int messageDateTime){
  DateTime dateTime=DateTime.fromMillisecondsSinceEpoch(messageDateTime);
  DateFormat dateFormat=DateFormat('dd/MM/yyyy');
  return dateFormat.format(dateTime);
}


extension DateTimeExtension on DateTime{
  DateTime extractDateOnly(){
    return DateTime(
        this.year,
        this.month,
        this.day
    );
  }
}