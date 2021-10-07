import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLuncher {


  //github
 void Github() async{

  const url = 'https://github.com/Salem494?tab=repositories';
  if( await canLaunch(url)){
    await launch(url);
  }else {
    throw 'Could not lunch URL';
  }
}

//linkedin
 void LinkedIn()async{
    const url = 'https://www.linkedin.com/in/salem-mahrous-5505501aa/';
    if( await canLaunch(url)){
      launch(url);
    }else {
      throw 'Could not lunch URL';
    }
  }


  void LauncherCall(int number) async{

    var url = 'tel:0${number.toString()}';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw  'Failed Url';
    }
  }

  void LuncherWhats( @required number , @required message) async{

    var url = 'whatsapp://send?phone =$number&text=$message';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw  'Failed Url';
    }
  }
  
  void sendMail() async{
   await launch('mailto:salimmahrous201@gmailcom');
  }

}