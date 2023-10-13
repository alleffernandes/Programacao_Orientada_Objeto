import 'package:orientacao_a_objeto/classes/pessoa_abstract.dart';
import 'package:orientacao_a_objeto/enum/tipo_notification.dart';
import 'package:orientacao_a_objeto/service/imp/notification_PushNotification.dart';
import 'package:orientacao_a_objeto/service/imp/notification_email.dart';
import 'package:orientacao_a_objeto/service/imp/notification_sms.dart';
import 'package:orientacao_a_objeto/service/notificatio_interface.dart';

class EnviarNotification {
  NotificationInterface? notification;

  void noticar(Pessoa pessoa){
    switch (pessoa.getTipoNotification()) {
      case TipoNotification.EMAIL:  
        notification = NotificationEmail();
        break;
      case TipoNotification.SMS:
        notification = NotificationSMS();
        break;
      case TipoNotification.PUSH:
        notification = NotificationPushNotification();
        break;
      default:
        break;   
    }
    if(notification !=null){
          notification!.enviarNotification(pessoa);
    }else{
      print('Pessoa sem tipo de notificação');
    }
  }
}